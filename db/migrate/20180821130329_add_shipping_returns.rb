class AddShippingReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :attention_name, :string
    add_column :returns, :address, :string
    add_column :returns, :address2, :string
    add_column :returns, :city, :string
    add_column :returns, :state, :string
    add_column :returns, :zip, :string
    add_column :returns, :country, :string
  end
end
