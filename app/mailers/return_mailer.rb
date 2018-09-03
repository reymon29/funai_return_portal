class ReturnMailer < ApplicationMailer

  def created(return_item)
    @return = return_item
    mail( to: @return.user.email,
    subject: "Funai return created-#{@return.item_number}-#{@return.product.model_number}")
  end

  def updated(return_item)
    @return = return_item
    mail(to: @return.user.email, cc: "funaicontact@gmail.com" ,subject: "Funai return updated-#{@return.item_number}-#{@return.product.model_number}")
  end
end
