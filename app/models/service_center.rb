class ServiceCenter < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: /[a-zA-Z0-9_.+-]+@(?:(?:[a-zA-Z0-9-]+\.)?[a-zA-Z]+\.)?(funaicorp|funaiservice|aarons)\.com$/, multiline: true, message: " domain is not a valid partner at this time." }
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
  validates :contact_name, presence: true
  validates :store_number, presence: true
  validates :contact_number, presence: true, format: { with: /^[0-9]{10}$/, multiline: true,
    message: "format 5555555555" }

end
