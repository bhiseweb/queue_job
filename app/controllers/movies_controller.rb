class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies, each_serializer: MoviesSerializer
  end

  def create
    job = CreateMovieJob.set(priority: 2).perform_later(movie_params)
    if job.successfully_enqueued?
      render json: { job: 'Job has successfully created' }
    else
      render json: { job: 'Job has not successfully created' }
    end
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
