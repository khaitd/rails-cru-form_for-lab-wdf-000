class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(strong_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(strong_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end


  private

    def strong_params
      params.require(:artist).permit(:name, :bio)
    end

end
