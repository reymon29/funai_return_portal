ActiveAdmin.register Return do
  remove_filter :images, :return_logs
  permit_params :item_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :comment, :rma_number, :rma_status, :attention_name, :address, :address2, :city, :state, :zip, :country, :contact_number, :special_comments, :return_tracking, :return_carrier, :date_tracking, :store_number, :return_location_id, :product_id, :user_id
  actions :index, :show, :update, :edit

  index do |return_item|
      column :item_number
      column "Return Model" do |item|
        item.product.model_number
      end
      column :serial_number
      column :invoice_date
      column :lease_date
      column "Submitted by" do |item|
        item.user.store_number
      end
      column :store_number
      column :attention_name
      column :address
      column :address2
      column :city
      column :state
      column :zip
      column :country
      column :contact_number
      column :special_comments
      column :return_tracking
      column :return_carrier
      column :date_tracking
      column :part_number
      column :return_reason
      column :comment
      column :rma_number
      column :rma_status
      column "Return Location" do |item|
        item.return_location.company
      end
      actions
    end
end
