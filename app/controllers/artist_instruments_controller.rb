class ArtistInstrumentsController < ApplicationController

  # Index page not required
  def index
    @artistinstruments = ArtistInstrument.all
  end

  def new
    @artistinstrument = ArtistInstrument.new
    @artists = Artist.all
    @instruments = Instrument.all
  end

  def create
    # @artist = Artist.find(params[:id])
    # @instrument = Instrument.find(params[:id])
    @artistinstrument = ArtistInstrument.create(params.require(:artist_instrument).permit(:name, :artist_id, :instrument_id))
    redirect_to @artistinstrument.artist
  end

  def edit
    @artistinstrument = ArtistInstrument.find(params[:id])
    @artists = Artist.all
    @instruments = Instrument.all
  end

  def update
    @artistinstrument = ArtistInstrument.find(params[:id])
    @artistinstrument.update(params.require(:artist_instrument).permit(:name, :artist_id, :instrument_id))
    redirect_to @artistinstrument.artist
  end

end
