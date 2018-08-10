class Return < ApplicationRecord
  has_many: users
  validates :item_number, uniqueness: true, presence: true
  validates :model, presence: true
  validates :serial_number, uniqueness: true, presence: true, length: { is: 14 }
  validates :invoice_date, presence: true
  validates :lease_date, presence: true
  validates :return_reason, presence: true
  validates :comment, presence: true
end
