class CreateReturns < ActiveRecord::Migration[5.2]
  def change
    create_table :returns do |t|
      t.integer :item_number
      t.string :model_number
      t.string :serial_number
      t.date :invoice_date
      t.date :lease_date
      t.string :part_number
      t.string :return_reason
      t.text :comment
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
