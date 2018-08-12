ActionMailer::Base.smtp_settings = {
  address: "mail.funaiservice.com",
  port: 26,
  domain: 'funaiservice.com',
  user_name: ENV['HOSTM_ADDRESS'],
  password: ENV['cM7%Nw8sb('],
  authentication: :login,
  enable_starttls_auto: true
}
