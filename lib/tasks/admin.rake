namespace :email do
  desc "Pending counts daily email"
  task :send => [ :environment ] do
    AdminMailer.weekly_email.deliver_now
  end
end
