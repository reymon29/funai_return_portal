# Preview all emails at http://localhost:3000/rails/mailers/return_mailer
class ReturnMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/return_mailer/create
  def create
    ReturnMailer.create
  end

end
