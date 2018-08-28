class AddStoreToReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :store_number, :string
  end
end
