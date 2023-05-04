class MoviesController < ApplicationController
  def index
    @pagy, @movies = pagy(Movie.all)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
