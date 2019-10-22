class ImagesController < ApplicationController

  def index
    if params[:start_date].present?
      @start_date = params[:start_date]
      @end_date = params[:end_date]
      @images = policy_scope(Image).where("created_at BETWEEN ? AND ?", @start_date, @end_date)
    else
      @images = policy_scope(Image).where(created_at: (Date.today - 30)..Date.tomorrow).limit(45)
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.remove_image = true
    @image.destroy
    redirect_to return_path(return_id_find)
    flash[:notice] = "Image has been removed"
    authorize @image
  end

  private
  def return_id_find
    @return = Return.friendly.find(@image.return_id)
  end

end
