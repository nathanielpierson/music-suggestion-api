class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render :index
  end
  def create
    @album = Album.create(
      title: params[:title],
      artist: params[:artist],
      year: params[:year],
      genre: params[:genre]
    )
    render :show
  end
  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end
  def update
    @album = Album.find_by(id: params[:id])
    @album.update(
      title: params[:title],
      artist: params[:artist],
      year: params[:year],
      genre: params[:genre]
    )
    render :show
  end
  def delete
    album = Album.find_by(id: params[:id])
    album.delete
  end
end
