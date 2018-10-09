ActionMailer::Base.smtp_settings = {
  address: "smtp.postmarkapp.com",
  port: 587,
  domain: 'funaiservice.com',
  user_name: ENV['POSTMARK_USER'],
  password: ENV['POSTMARK_PASS'],
  authentication: :login,
  enable_starttls_auto: true
}
