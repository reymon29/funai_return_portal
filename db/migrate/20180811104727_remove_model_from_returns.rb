class RemoveModelFromReturns < ActiveRecord::Migration[5.2]
  def change
    remove_column :returns, :model_number, :string
    add_reference :returns, :product, foreign_key: true
  end
end
