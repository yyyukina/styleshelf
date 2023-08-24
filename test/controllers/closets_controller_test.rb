require "test_helper"

class ClosetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get closets_index_url
    assert_response :success
  end
end
