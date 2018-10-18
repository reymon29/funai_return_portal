class Product < ApplicationRecord
has_many :returns
validates :model_number, presence: true, uniqueness: true
validates :product_type, presence: true, inclusion: { in: ['BD', 'Home Theater', 'Mini Hi-Fi System', 'Soundbar', 'TV'] }
validates :weight, presence: true
validates :carrier_default, presence: true, inclusion: { in: ["FedEx", "LTL-TSG"] }

  #Active admin dropdown list
  def name
    "#{model_number} - #{product_type}"
  end
end
