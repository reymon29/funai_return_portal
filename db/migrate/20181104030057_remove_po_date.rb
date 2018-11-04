class RemovePoDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :returns, :invoice_date, :string
  end
end
