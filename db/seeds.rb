# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

song = Song.new(title: "Dirty Little Secret", album: "Move Along", artist: "The All-American Rejects", year: "2005", genre: "pop punk")
song.save
song = Song.new(title: "Stab My Back", album: "Move Along", artist: "The All-American Rejects", year: "2005", genre: "pop punk")
song.save
song = Song.new(title: "Move Along", album: "Move Along", artist: "The All-American Rejects", year: "2005", genre: "pop punk")
song.save
song = Song.new(title: "Dirty Little Secret", album: "Move Along", artist: "The All-American Rejects", year: "2005", genre: "pop punk")
song.save
