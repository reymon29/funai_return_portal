class AddCarrierDefaultToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :carrier_default, :string
  end
end
