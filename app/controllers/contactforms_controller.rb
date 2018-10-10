class ContactformsController < ApplicationController

  def new
    @contact = Contactform.new
    authorize @contact
  end

  def create
    @contact = Contactform.new(contact_params)
    authorize @contact
    if  verify_recaptcha(model: @contact) && @contact.save
      UserMailer.contact(@contact).deliver_now
      redirect_to dashboard_path
      flash[:notice] = "Email sent and you are cc:"
    else
      render :new
    end
  end

  private
  def contact_params
    params.require(:contactform).permit(:name, :email, :subject)
  end
end
