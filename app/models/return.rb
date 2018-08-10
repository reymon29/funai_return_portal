class Return < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :item_number, uniqueness: { message: "has already been submitted please check your past RMAs or contact us"}, presence: true
  validates :model_number, presence: true
  validates :serial_number, uniqueness: { message: "has already been submitted please check your past RMAs or contact us"}, presence: true, length: { is: 14 }
  validates :invoice_date, presence: true
  validates :lease_date, presence: true
  validates :return_reason, presence: true
  validates :comment, presence: true
end
