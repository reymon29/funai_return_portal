ActiveAdmin.register ReturnLog do
  csv do
    column :id
    column (:return_item_number) {|returnlog| returnlog.return.item_number}
    column :comment
    column :created_at
    column :updated_at
  end
end
