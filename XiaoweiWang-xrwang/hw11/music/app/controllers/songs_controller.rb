class SongsController < ApplicationController
  def index
    @artist = get_artist
    @songs = @artist.songs
    @songs = Song.all
  end


  def create
    @artist = get_artist
    @song = @artist.songs.create(song_params)
    # Song.create(artist: @artist)
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = get_artist
    @song = get_song
    @song.destroy

    redirect_to artist_path(@artist)
  end

  def show
    @artist = get_artist
    @songs = @artist.songs
    @song = get_song
    @reviews = @song.reviews
  end

private
  def song_params
    params.require(:song).permit(:title, :length, :genre)
  end

  def get_artist
    Artist.find(params[:artist_id])
  end

  def get_song
    Song.find(params[:id])
  end

end
