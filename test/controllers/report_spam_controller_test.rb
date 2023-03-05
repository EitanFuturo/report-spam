require "test_helper"

class ReportSpamControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get report_spam_create_url
    assert_response :success
  end
end
