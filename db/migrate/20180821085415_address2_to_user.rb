class Address2ToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address2, :string
  end
end
