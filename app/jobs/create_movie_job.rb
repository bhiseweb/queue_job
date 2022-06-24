class CreateMovieJob < ApplicationJob
  queue_as :default

  before_enqueue do |job|
    QueueJob.create(job_id: job_id, name: arguments.first[:title], priority: priority)
  end

  def perform(movie_params)
    job = QueueJob.find_by(job_id: job_id)
    job.update(status: "in_progress")
    if Movie.create(movie_params)
      job.update(status: "done")
    else
      job.update(status: "failed")
    end
  end
end
