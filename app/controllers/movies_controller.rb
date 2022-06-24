class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies, each_serializer: MoviesSerializer
  end

  def create
    CreateMovieJob.set(priority: 0).perform_later(movie_params)
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
