class AdminJob < ApplicationJob
  queue_as :default

  def perform
    puts "Queue email service"
    AdminMailer.delivery_job
  end
end
