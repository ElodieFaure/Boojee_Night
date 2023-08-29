require "test_helper"

class PromotionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get promotions_show_url
    assert_response :success
  end
end
