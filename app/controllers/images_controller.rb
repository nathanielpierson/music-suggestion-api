class ImagesController < ApplicationController
  def show
    @image = Image.find_by(id: params[:id])
    render :show
  end
end
