class LogsController < ApplicationController
  def index
    @logs= Log.all
  end

  def new
    @log= Log.new
  end

  def create
    @log = Log.create(log_params)
    redirect_to @log.artist
    #redirect_to @log
  end

  private
  def log_params
    params.require(:log).permit(:name, :artist_id, :instrument_id)
  end

end
