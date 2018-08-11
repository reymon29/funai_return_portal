class ReturnsController < ApplicationController
  before_action :return_id_find, only: [:show, :edit, :update]
  def index
    @returns = Return.all
  end

  def new
    @return = Return.new
  end

  def create
    @return = Return.new(return_params)
    @return.rma_status = "Submitted for Approval"
    @return.user = current_user
    if @return.save
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
      redirect_to return_path(@return)
    else
      render :edit
    end
  end

  private

  def return_id_find
    @return = Return.find(params[:id])
  end

  def return_params
    params.require(:return).permit(:item_number, :model_number, :serial_number, :invoice_date, :lease_date, :part_number, :return_reason, :comment)
  end
end
