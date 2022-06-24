class QueueJobController < ApplicationController
  def index
    jobs = QueueJob.order(priority: :asc)
    render json: jobs, each_serializer: QueueJobSerializer
  end
end
