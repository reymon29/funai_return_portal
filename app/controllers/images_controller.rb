class ImagesController < ApplicationController

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to return_path(@image.return_id)
    flash[:notice] = "Image has been removed"
    authorize @image
  end
end
