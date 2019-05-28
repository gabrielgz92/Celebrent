require 'test_helper'

class CelebrtiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get celebrties_index_url
    assert_response :success
  end

  test "should get show" do
    get celebrties_show_url
    assert_response :success
  end

end
