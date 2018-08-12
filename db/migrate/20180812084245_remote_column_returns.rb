class RemoteColumnReturns < ActiveRecord::Migration[5.2]
  def change
    remove_column :returns, :photos, :string
  end
end
