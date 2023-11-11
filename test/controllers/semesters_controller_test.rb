require "test_helper"

class SemestersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get semesters_new_url
    assert_response :success
  end
end
