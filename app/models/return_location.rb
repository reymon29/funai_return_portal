class ReturnLocation < ApplicationRecord
  has_many :returns
  validates :company, :attention_name, :address, :city, :state, :zip, :country, :contact_number, presence: true
end
