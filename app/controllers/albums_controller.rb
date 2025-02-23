class AlbumsController < ApplicationController
  def index
    album_array = []
    x = 1
    while x < 200
    current_album = Album.find_by(id: x)
    if current_album != nil
      album_array.push(current_album)
    end
    x +=1
    end
    album_count = album_array.length
    y = rand(0...album_count)
    @four_suggestions = [ album_array[rand(0...album_count)], album_array[rand(0...album_count)], album_array[rand(0...album_count)], album_array[rand(0...album_count)] ]

  render json: @four_suggestions
  end
  def create
    @album = Album.create(
      title: params[:title],
      year: params[:year],
      genre: params[:genre],
      artist: params[:artist],
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
      artist: params[:artist],
      img_url: params[:image_url]
    )
    render :show
  end
  def delete
    album = Album.find_by(id: params[:id])
    album.delete
  end
end
