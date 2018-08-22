class ReturnMailer < ApplicationMailer

  def created(return_item)
    @return = return_item

    mail( to: @return.user.email,
    subject: "Funai return created-#{@return.item_number}")
  end
end
