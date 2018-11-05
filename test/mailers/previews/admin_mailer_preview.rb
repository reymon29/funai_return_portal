# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
def weekly_email
    AdminMailer.weekly_email
  end
end
