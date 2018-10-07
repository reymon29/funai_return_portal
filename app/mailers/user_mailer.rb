class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome Funai return portal')
    # This will render a view in `app/views/user_mailer`!
  end

  def contact(user)
    @user = user
    mail(to: "funai_aarons@funaiservice.com", cc: "#{@user.email}", subject: "#{@user.name} has a question for Funai")
  end
end
