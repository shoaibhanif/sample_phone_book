require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
  	@b_title = "ROR Sample Phone Book"
  end
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@b_title}"
  end

end
