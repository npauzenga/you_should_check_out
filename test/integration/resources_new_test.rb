require 'test_helper'

class ResourcesNewTest < ActionDispatch::IntegrationTest
  
  test "invalid resource information" do
    get new_path
    assert_no_difference 'Resource.count' do
      post resources_path, resource: { title: "",
                                       description: "foo",
                                       link: "bar" }
      end
      assert_template 'resources/new'
  end
end
