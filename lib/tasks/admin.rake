namespace :email do
  desc "Pending counts daily email"
  task :send do
    AdminJob.perform_now
  end
end
