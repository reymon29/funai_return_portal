class AdjustingColumnString < ActiveRecord::Migration[5.2]
  def change
    change_column :returns, :invoice_date, :string
    change_column :returns, :lease_date, :string
  end
end
