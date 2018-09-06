ActiveAdmin.register Product do
  permit_params :model_number, :product_type, :weight, :carrier_default, :enable


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  controller do
    def new
      @product = Product.new
    end

    def create
      @product = Product.new
      @product.model_number = params[:product][:model_number]
      @product.product_type = params[:product][:product_type]
      @product.carrier_default = params[:product][:carrier_default]
      @product.enable = params[:product][:enable]
      @product.weight = params[:product][:weight].to_i
      if @product.save
        redirect_to admin_product_path(@product)
        flash[:alert] = "Saved"
      else
        flash[:alert] = "Did not save please try again"
      end
    end
  end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs 'New Product' do
    f.input :model_number
    f.input :product_type, :as => :select,  :collection => ['BD', 'Home Theater', 'Mini Hi-Fi System', 'Soundbar', 'TV']
    f.input :weight, :as => :select,  :collection => ['15', '25', '35', '40', '50', '60', '70',' 80', '100']
    f.input :carrier_default, :as => :select,  :collection => ['FedEx', 'LTL-TSG']
    f.input :enable
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
