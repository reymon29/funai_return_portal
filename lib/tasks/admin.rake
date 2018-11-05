namespace :email do
  desc "Pending counts daily email"
  task :send => [ :environment ] do
    AdminJob.perform_now
  end
end
