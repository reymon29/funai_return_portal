module Shipping
  class ReturnsController <  ApplicationController
    before_action :require_admin
    before_action :return_id_find, only: [:show, :edit, :update]
    def index
      # @returns = Return.all
      @returns = policy_scope(Return).order(created_at: :desc)
    end

    def show
    end

    def edit
    end

    def update
      if return_params[:rma_status].empty? || return_params[:rma_number].empty?
        flash[:alert] = "No RMA Status has been assigned"
        render :show
      elsif @return.update(return_params)
        redirect_to shipping_returns_path
        flash[:notice] = "RMA has been assigned"
      else
        render :edit
      end
    end

    private
    def return_id_find
      @return = Return.find(params[:id])
      authorize @return
    end

    def return_params
      params.require(:return).permit(:rma_status, :rma_number, :return_tracking)
    end
    def require_admin
      unless current_user.admin?
        redirect_to root_path
      end
    end
  end
end

