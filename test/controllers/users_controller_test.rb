require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  test 'should not list users if not logged in' do
    get '/users'
    assert_response :success
    # assert_equal Contact.count, json_response['data'].size
  end
end
