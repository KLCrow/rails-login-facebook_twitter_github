require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get CRUD" do
    get :CRUD
    assert_response :success
  end

end
