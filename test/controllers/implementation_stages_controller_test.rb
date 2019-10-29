require 'test_helper'

class ImplementationStagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get implementation_stages_show_url
    assert_response :success
  end

end
