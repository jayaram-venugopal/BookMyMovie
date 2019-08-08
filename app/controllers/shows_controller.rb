class ShowsController < ApplicationController
  def index
    @movies = Movie.all.decorate
  end

  def show
    @movie = Movie.includes(shows: (:theater)).find(params[:id]).decorate
  end
  
end
