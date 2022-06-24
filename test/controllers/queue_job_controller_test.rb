require "test_helper"

class QueueJobControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get queue_job_index_url
    assert_response :success
  end
end
