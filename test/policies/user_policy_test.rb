require 'test_helper'
require 'helpers/policy_helper'

class UserPolicyTest < ActiveSupport::TestCase
  include PolicyTestHelpers

  def setup
    create_default_users
    @record = User.create(username: 'record', email: 'record@test.com', password: 'password', admin: false)
  end

  test 'admin user should be allowed to call index' do
    assert policy(@test_admin, @message).index?
  end

  test 'non-admin user should not be allowed to call index' do
    assert_not policy(@test_user, @message).index?
  end

end
