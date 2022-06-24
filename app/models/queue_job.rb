class QueueJob < ApplicationRecord
  validates :job_id, presence: true
  validates :name, presence: true
  
  enum status: %i[done in_progress waiting failed]
  enum priority: %i[critical high low]
end
