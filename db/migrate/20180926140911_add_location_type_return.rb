class AddLocationTypeReturn < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :location_type, :string
  end
end
