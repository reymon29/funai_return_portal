class AddTrackingToReturns < ActiveRecord::Migration[5.2]
  def change
    add_column :returns, :return_tracking, :string
    add_column :returns, :return_carrier, :string
    add_column :returns, :date_tracking, :date
  end
end
