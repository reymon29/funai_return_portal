require 'test_helper'

class ContactformControllerTest < ActionDispatch::IntegrationTest
  test "should get :index" do
    get contactform_:index_url
    assert_response :success
  end

  test "should get :new" do
    get contactform_:new_url
    assert_response :success
  end

  test "should get :create" do
    get contactform_:create_url
    assert_response :success
  end

end
