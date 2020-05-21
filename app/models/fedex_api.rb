require 'fedex'
require 'json'
class FedexApi < ApplicationRecord

  def self.check_tracking_status(tracking)
    feedback = Hash.new
    fedex_tracking = tracking
    fedex = Fedex::Shipment.new(:key => ENV['FEDEX_KEY_TEST'],
                        :password => ENV['FEDEX_PASSWORD_TEST'],
                        :account_number => ENV['FEDEX_ACCOUNT_TEST'],
                        :meter => ENV['FEDEX_METER_TEST'],
                        :mode => 'production')
    begin
    results = fedex.track(:tracking_number => "#{fedex_tracking}")
      results.each do |track|
      feedback = track.details
    end
    return JSON.generate(feedback)
    rescue  Fedex::RateError => msg
      error = {error: "#{msg}"}
      JSON.generate(error)
    end
  end
end
