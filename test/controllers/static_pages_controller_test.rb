require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success # success error code
    assert_select "title", "Bryon's App"

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Bryon's App"

  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Bryon's App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Bryon's App"
  end

end
