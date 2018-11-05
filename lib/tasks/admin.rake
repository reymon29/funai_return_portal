namespace :user do
  desc "Sending email daily"
  task "send" do |t, args|
    AdminJob.perform_now
  end
end
