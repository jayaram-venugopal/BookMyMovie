class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :random_image, only: :index

  def index
    @movies = Movie.all.decorate
  end

  def show
    @movie = Movie.includes(shows: (:theater)).find(params[:id]).decorate
  end

  def seating
    
  end
  
  private
  def random_image
    @random_image = Movie.random_image
  end
  
end
