class AddSlugReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :slug, :string, unique: true
  end
end
