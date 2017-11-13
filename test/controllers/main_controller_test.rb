require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get first" do
    get main_first_url
    assert_response :success
  end

end
