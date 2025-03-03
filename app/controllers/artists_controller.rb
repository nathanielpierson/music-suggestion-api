class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render :index
  end
  def index_random
    artist_array = []
    x = 1
    while x < 100
      current_artist = Artist.find_by(id: x)
      if current_artist != nil
        artist_array.push(current_artist)
      end
      x +=1
    end
    artist_count = artist_array.length
    y = rand(0...artist_count)
    @six_suggestions = []
    z = 0
    while z < 6
      current_index = rand(0...artist_count)
      @six_suggestions.push(artist_array[current_index])
      artist_array.delete_at(current_index)
      artist_count -= 1
      z += 1
    end
    render json: @six_suggestions
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
