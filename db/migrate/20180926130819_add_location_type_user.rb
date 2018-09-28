class AddLocationTypeUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location_type, :string
  end
end
