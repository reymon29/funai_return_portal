ActiveAdmin.register Return do
  permit_params :item_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :rma_number, :attention_name, :address, :address2, :city, :state, :zip, :country, :contact_number
end
