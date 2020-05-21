class FedexApisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:get_tracking]
  skip_after_action :verify_authorized

  def get_tracking
    @tracking = params[:get_tracking]
    @results = FedexApi.check_tracking_status(@tracking)
    render json: @results
  end
end
