require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get sermon_notes" do
    get emails_sermon_notes_url
    assert_response :success
  end

end
