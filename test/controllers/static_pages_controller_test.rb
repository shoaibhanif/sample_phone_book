require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
  	@b_title = "ROR Sample Phone Book"
  end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | ROR Sample Phone Book"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | ROR Sample Phone Book"
  end

end
