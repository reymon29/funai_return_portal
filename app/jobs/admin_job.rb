class AdminJob < ApplicationJob
  queue_as :default

  def perform
    puts "Queue email service"
    AdminMailer.deliver
  end
end
