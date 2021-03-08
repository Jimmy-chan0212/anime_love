require 'test_helper'

class HolyGroundControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get holy_ground_index_url
    assert_response :success
  end

end
