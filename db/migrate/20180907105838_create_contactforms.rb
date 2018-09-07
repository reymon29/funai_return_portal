class CreateContactforms < ActiveRecord::Migration[5.2]
  def change
    create_table :contactforms do |t|
      t.string :name
      t.string :email
      t.text :subject
      t.timestamps
    end
  end
end
