class ImagesController < ApplicationController

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
