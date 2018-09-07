class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    UserMailer.welcome(user)
  end
  def contact
    user = Contactform.first
    UserMailer.contact(user)
  end
end
