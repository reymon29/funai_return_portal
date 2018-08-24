class ReturnsController < ApplicationController
  before_action :return_id_find, only: [:show, :edit, :update, :destroy]



  def index
    # @returns = Return.all
    @returns = policy_scope(Return).order(created_at: :desc)
  end

  def new
    @return = Return.new
    @image = @return.images.build
    authorize @return
  end

  def create
    @return = Return.new(return_params)
    @return.rma_status = "Submitted for Approval"
    @return.user = current_user
    @return.country = current_user.country
    @product = Product.find_by(params[:product_id])
    @return.return_carrier = @product.carrier_default

    authorize @return
    if @return.save
      if params[:images]
        params[:images].each do |image|
          @return.images.create(image: image)
        end
      end
      ReturnMailer.created(@return).deliver_now
      redirect_to dashboard_path
      flash[:notice] = "Return for Aaron's #{@return.item_number} has been submitted and will be reviewed shortly"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @return.update(return_params)
      if params[:images]
        params[:images].each do |image|
          @return.images.create(image: image)
        end
      end
      redirect_to return_path(@return)
    else
      render :edit
    end
  end

  def destroy
    @return.destroy
    redirect_to dashboard_path
    flash[:notice] = "Return has been deleted"
  end

  private

  def return_id_find
    @return = Return.find(params[:id])
    authorize @return
  end

  def return_params
    params.require(:return).permit(:item_number, :model_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :comment, :product_id, :attention_name, :address, :address2, :city, :zip, :state, :contact_number, :special_comments, images_attributes: [:image, :return_id])
  end
end
