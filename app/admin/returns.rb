ActiveAdmin.register Return do
  permit_params :item_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :comment, :rma_number, :rma_status, :attention_name, :address, :address2, :city, :state, :zip, :country, :contact_number, :special_comments, :return_tracking, :return_carrier, :date_tracking, :store_number, :return_location_id, :product_id, :user_id
  actions :index, :show, :update, :edit
end
