require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  def setup
    @google = links(:google)
    @yahoo  = links(:yahoo)
  end

  test "should get index" do
    get links_url
    assert_response :success
  end

  test "should get new" do
    get new_link_url
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post links_url, params: {link: { source_url: "First post" } }
    end
  end

  test "show link" do
    get link_url(@google)
    assert_response :success
  end
end
