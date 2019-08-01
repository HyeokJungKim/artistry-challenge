class StudiosController < ApplicationController


    def show
        @studio = Studio.find(params[:id])
    end


    def new
        @studio = Studio.new
        @artists = Artist.all 
        @instruments = Instrument.all
    end

    def create
        @studio = Studio.create(studio_params)
        redirect_to artist_path(@studio.artist)
    end






    private

    def studio_params
        params.permit(:artist_id, :instrument_id)
    end



    















end
