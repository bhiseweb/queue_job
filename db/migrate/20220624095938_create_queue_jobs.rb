class CreateQueueJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :queue_jobs do |t|
      t.string :job_id
      t.integer :status, default: 2
      t.integer :priority, default: 2
      t.string :name

      t.timestamps
    end
  end
end
