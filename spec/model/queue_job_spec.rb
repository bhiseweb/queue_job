require 'rails_helper'

RSpec.describe QueueJob, type: :model do

  describe "validation check" do
    it "should be job id present" do
      queue = QueueJob.new(job_id: nil, status: 'waiting', name: 'jay ho', priority: nil).save
      expect(queue).to eq(false)
    end
  end

end