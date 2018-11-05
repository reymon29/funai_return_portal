class AdminJob < ApplicationJob
  queue_as :default

  def perform
    puts "Queue email service"
    AdminMailer.weekly_email.deliver_now
  end
end
