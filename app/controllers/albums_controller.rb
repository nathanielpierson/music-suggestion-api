class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render :index
  end
  def create
    @album = Album.create(
      title: params[:title],
      year: params[:year],
      genre: params[:genre],
      artist_id: params[:artist_id],
      img_url: params[:img_url]
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
      year: params[:year],
      genre: params[:genre],
      artist_id: params[:artist_id],
      img_url: params[:image_url]
    )
    render :show
  end
  def delete
    album = Album.find_by(id: params[:id])
    album.delete
  end
end
