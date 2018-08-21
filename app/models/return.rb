class Return < ApplicationRecord
  has_many :images
  belongs_to :user
  belongs_to :product
  accepts_nested_attributes_for :images, allow_destroy: :destroy
  validates :user_id, presence: true
  validates :item_number, uniqueness: { message: "has already been submitted please check your past RMAs or contact us"}, presence: true
  validates :product_id, presence: true
  validates :serial_number, uniqueness: { message: "has already been submitted please check your past RMAs or contact us"}, presence: true, length: { is: 14 }
  validates :invoice_date, presence: true
  validates :lease_date, presence: true
  validates :return_reason, presence: true
  validates :part_number, presence: true
  validates :comment, presence: true
  validates :attention_name, presence: true
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
end
