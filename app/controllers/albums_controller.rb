class AlbumsController < ApplicationController
  def index
    Album.all
    render :index
  end
  def index_random
    album_array = []
    x = 1
    while x < 50
    current_album = Album.find_by(id: x)
    if current_album != nil
      album_array.push(current_album)
    end
    x +=1
    end
    album_count = album_array.length
    y = rand(0...album_count)
    @six_suggestions = []
    z = 0
    while z < 6
    current_index = rand(0...album_count)
    @six_suggestions.push(album_array[current_index])
    album_array.delete_at(current_index)
    album_count -= 1
    z += 1
    end

  render json: @six_suggestions
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
