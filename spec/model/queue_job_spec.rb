require 'rails_helper'

RSpec.describe QueueJob, type: :model do

  describe "validation check" do
    it "should be job id present" do
      queue = QueueJob.new(job_id: nil, status: 'waiting', name: 'jay ho', priority: nil).save
      expect(queue).to eq(false)
    end

    it "should be status present" do
      queue = QueueJob.new(job_id: "adfd-1234-rueu-456", status: nil, name: 'jay ho', priority: nil).save
      expect(queue).to eq(true)
    end
    
    it "should be name present" do
      queue = QueueJob.new(job_id: "adfd-1234-rueu-456", status: nil, name: nil, priority: nil).save
      expect(queue).to eq(false)
    end

    it "should be queue job save" do
      queue = QueueJob.new(job_id: "adfd-1234-rueu-456", status: nil, name: 'jay ho', priority: nil).save
      expect(queue).to eq(true)
    end
  end

end