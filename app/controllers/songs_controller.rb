class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end
  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end
  def create
    @song = Song.create(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
      genre: params[:genre]
    )
    render :show
  end
  def update
  @song = Song.find_by(id: params[:id])
  @song.update(
    title: params[:title],
    album: params[:album],
    artist: params[:artist],
    year: params[:year],
    genre: params[:genre]
  )
  render :show
  end
  def delete
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: "song deleted"
  end
end
