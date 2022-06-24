class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies each_serializer: MoviesSerializer
  end

  def create
  end
end
