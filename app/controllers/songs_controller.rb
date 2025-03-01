class SongsController < ApplicationController
  def index
    song_array = []
    x = 1
    while x < 50
      current_song = Song.find_by(id: x)
      if current_song != nil
        song_array.push(current_song)
      end
      x +=1
    end
    song_count = song_array.length
    y = rand(0...song_count)
    @six_suggestions = []
    z = 0
    while z < 6
      current_index = rand(0...song_count)
      @six_suggestions.push(song_array[current_index])
      song_array.delete_at(current_index)
      song_count -= 1
      z += 1
    end
  render json: @six_suggestions
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
  def find_image
    h = Album.find_by(id: 3)
    @song = h
    render :show
  end
end
