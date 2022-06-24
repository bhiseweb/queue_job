class QueueJobSerializer < ActiveModel::Serializer
  attributes :id, :job_id, :status, :priority
end
