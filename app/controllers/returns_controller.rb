class ReturnsController < ApplicationController
  before_action :return_id_find, only: [:show, :edit, :update, :destroy]

  def index
    # @returns = Return.all
    if params[:query].present?
      @returns = Return.where(item_number: params[:query])
    else
      @returns = policy_scope(Return).order(created_at: :desc)
    end
  end

  def new
    @return = Return.new
    @services = ServiceCenter.all
    @image = @return.images.build
    authorize @return
  end

  def create
    @services = ServiceCenter.all
    @return = Return.new(return_params)
    @return_log = ReturnLog.new
    @return.rma_status = "Submitted for Approval"
    @return.user = current_user
    @product = Product.find_by_id(params[:return][:product_id].to_i)
    @location = params[:return][:country] == "US" ? ReturnLocation.find_by_id(1) : ReturnLocation.find_by_id(2)
    @return.return_location = @location
    if @product.nil?
      flash[:alert] = "Model number is required"
    else
      @return.return_carrier = @product.carrier_default
    end
    authorize @return
    if @return.save
      if params[:images]
        params[:images].each do |image|
          @return.images.create(image: image)
        end
      end
      @return_log.return = @return
      @return_log.user = @return.user
      @return_log.comment = "Return request created"
      @return_log.save
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
    if @return.rma_status == "Completed, shipping assigned"
      flash[:notice] = "RMA was completed, please contact us if you are having trouble"
      redirect_to return_path(@return)
    elsif @return.rma_status == "RMA Denied, past return period"
      flash[:notice] = "RMA was completed, please contact us if you are having trouble"
      redirect_to return_path(@return)
    else
      flash[:alert] = "#{@return.product.model_number} #{@return.serial_number}, if you need to cancel or item number, model or serial was incorrectly entered please contact us."
    end
  end

  def update
    @return_log = ReturnLog.new
    @return.rma_status = "Updated Info, awaiting review"
    @product = Product.find_by(id: params[:return][:product_id])
    @return.product = @product
    @location = params[:return][:country] == "US" ? ReturnLocation.find_by_id(1) : ReturnLocation.find_by_id(2)
    @return.return_location = @location
    if @product.nil?
      flash[:alert] = "Model number is required"
    else
      @return.return_carrier = @product.carrier_default
    end
    if @return.update(return_params)

      if params[:images]
        params[:images].each do |image|
          @return.images.create(image: image)
        end
      end
      @return_log.return = @return
      @return_log.user = current_user
      @return_log.comment = "Return was updated"
      @return_log.save
      ReturnMailer.updated(@return).deliver_now
      flash.clear
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
    @return = Return.friendly.find(params[:id])
    authorize @return
  end

  def return_params
    params.require(:return).permit(:item_number, :location_type, :model_number, :store_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :comment, :product_id, :attention_name, :address, :address2, :city, :zip, :state, :country ,:contact_number, :special_comments, images_attributes: [:image, :return_id])
  end
end
