class TestMailer < ActionMailer::Base
  def message1
    mail(
      subject: 'Hello from Postmark',
      to:  'rmontemayor@funaiservice.com',
      from: 'funai_aarons@funaiservice.com',
      track_opens: 'true')
  end
end
