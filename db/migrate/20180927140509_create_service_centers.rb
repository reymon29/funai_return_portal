class CreateServiceCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :service_centers do |t|
      t.string :store_number
      t.string :contact_name
      t.string :email
      t.string :address
      t.string :address2
      t.string :state
      t.string :city
      t.string :zip
      t.string :country
      t.string :contact_number
      t.text :special_notes
      t.timestamps
    end
  end
end
