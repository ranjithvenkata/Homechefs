require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get personal" do
    get page_personal_url
    assert_response :success
  end

end
