class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render :index
  end
  def show
    @artist = Artist.find_by(id: params[:id])
    render :show
  end
  def create
    @artist = Artist.create(
      name: params[:name]
    )
    render :show
  end
  def update
  @artist = Artist.find_by(id: params[:id])
  end
  def delete
    artist = Artist.find_by(id: params[:id])
    artist.delete
    # render json: { message "deleted artist" }
  end
end
