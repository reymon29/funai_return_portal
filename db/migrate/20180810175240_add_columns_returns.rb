class AddColumnsReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :rma_number, :string
    add_column :returns, :rma_status, :string
  end
end
