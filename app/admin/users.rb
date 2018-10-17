ActiveAdmin.register User do
  permit_params :email, :store_number, :address, :city, :zip, :state, :country, :admin, :aaronsmgr ,:address2, :first_name, :last_name, :phone_number, :password, :password_confirmation
  actions :index, :show, :new, :create, :update, :edit

  index do
    selectable_column
    column :email
    column :id
    column :first_name
    column :last_name
    column :store_number
    column :address
    column :address2
    column :city
    column :state
    column :zip
    column :country
    column :phone_number
    column :admin
    column :aaronsmgr
    column :created_at
    column :sign_in_count
    actions
  end

  show do
    attributes_table do
      row :email
      row :first_name
      row :last_name
      row :store_number
      row :address
      row :address2
      row :city
      row :state
      row :zip
      row :country
      row :phone_number
      row :admin
      row :aaronsmgr
      row :created_at
      row :sign_in_count
    end
    active_admin_comments
  end

  form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs 'Users' do
  f.input :email
  f.input :password
  f.input :password_confirmation
  f.input :first_name
  f.input :last_name
  f.input :store_number
  f.input :address
  f.input :address2
  f.input :city
  f.input :state
  f.input :zip
  f.input :country
  f.input :phone_number
  f.input :admin
  f.input :aaronsmgr
  end
  f.actions         # adds the 'Submit' and 'Cancel' buttons
end

end
