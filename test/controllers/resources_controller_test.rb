require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get new" do
    get :new
    assert_response :success
  end
end
