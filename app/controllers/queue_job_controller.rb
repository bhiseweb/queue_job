class QueueJobController < ApplicationController
  def index
    jobs = QueueJob.all
    render json: jobs, each_serializer: QueueJobSerializer
  end
end
