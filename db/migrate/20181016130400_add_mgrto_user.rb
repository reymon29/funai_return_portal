class AddMgrtoUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :aaronsmgr, :boolean, default: false, null: false
  end
end
