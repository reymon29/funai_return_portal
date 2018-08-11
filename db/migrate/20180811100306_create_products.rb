class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :model_number
      t.string :product_type
      t.integer :weight
      t.boolean :enable, default: true
      t.timestamps
    end
  end
end
