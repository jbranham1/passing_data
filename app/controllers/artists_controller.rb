class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    Artist.create(name: params[:name])
    redirect_to '/artists'
  end
end
