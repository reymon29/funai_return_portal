class CreateFedexApis < ActiveRecord::Migration[5.2]
  def change
    create_table :fedex_apis do |t|

      t.timestamps
    end
  end
end
