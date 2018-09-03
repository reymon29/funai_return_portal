class AddReferencesReturns < ActiveRecord::Migration[5.2]
  def change
    add_reference :returns, :return_location, foreign_key: true
  end
end
