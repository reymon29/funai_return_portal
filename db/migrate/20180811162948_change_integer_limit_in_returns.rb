class ChangeIntegerLimitInReturns < ActiveRecord::Migration[5.2]
  def change
    change_column :returns, :item_number, :integer, limit: 8
  end
end
