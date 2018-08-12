ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 26,
  domain: 'gmail.com',
  user_name: ENV['HOSTM_ADDRESS'],
  password: ENV['HOSTM_password'],
  authentication: :login,
  enable_starttls_auto: true
}
