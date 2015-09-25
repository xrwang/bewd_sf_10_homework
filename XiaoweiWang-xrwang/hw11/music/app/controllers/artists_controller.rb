class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = get_artist
    @songs = @artist.songs
    @reviews = @artist.reviews

  end

  def new
    @artist = Artist.new
  end


  def create
    @artist = Artist.new(artist_params)

   @artist.save
   redirect_to artists_path
  end


  def edit
    @artist=get_artist
  end

  def update
    @artist = get_artist

    if @artist.update(artist_params)
      redirect_to artists_path
    else
      render 'edit'
    end
  end

  def destroy
    @artist = get_artist
    @artist.destroy

    redirect_to artists_path
  end


  private
    def artist_params
      params.require(:artist).permit(:name, :image_url, :description)
    end

    def get_artist
      Artist.find(params[:id])
    end
end
