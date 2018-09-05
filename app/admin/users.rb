ActiveAdmin.register User do
  permit_params :email, :store_number, :address, :city, :zip, :state, :country, :admin, :address2, :first_name, :last_name, :phone_number
  actions :index, :show, :new, :create, :update, :edit

  index do
    selectable_column
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
    actions
  end

  show do
    attributes_table do
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
    end
    active_admin_comments
  end


end
