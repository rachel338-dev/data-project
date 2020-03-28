require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get title" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "Rachel's Blog"
end

test "should validate year" do
  get static_pages_about_path
  assert_select ".year_time", Time.now.year
end



end 

