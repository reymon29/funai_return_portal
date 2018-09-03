class CreateReturnLocation < ActiveRecord::Migration[5.2]
  def change
    create_table :return_locations do |t|
      t.string :company
      t.string :attention_name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :contact_number
    end
  end
end
