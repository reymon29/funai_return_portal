# Preview all emails at http://localhost:3000/rails/mailers/return_mailer
class ReturnMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/return_mailer/create
  def created
    return_item = Return.first
    ReturnMailer.created(return_item)
  end
  def updated
    return_item = Return.find_by_id(8)
    ReturnMailer.updated(return_item)
  end
end
