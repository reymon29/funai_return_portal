class AddTelephoneUserAndReturn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_column :returns, :contact_number, :string
    add_column :returns, :special_comments, :text
  end
end
