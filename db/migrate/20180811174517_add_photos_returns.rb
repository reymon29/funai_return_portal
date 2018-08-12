class AddPhotosReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :photos, :string, array: true
  end
end
