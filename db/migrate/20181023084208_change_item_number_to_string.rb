class ChangeItemNumberToString < ActiveRecord::Migration[5.2]
  def change
    change_column :returns, :item_number, :string
  end
end
