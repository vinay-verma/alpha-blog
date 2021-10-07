require 'test_helper'
require 'helpers/policy_helper'

class ApplicationPolicyTest < ActiveSupport::TestCase
  include PolicyTestHelpers

  def setup
    create_default_users
    @record = Article.new(title: 'Test Article', description: 'some description', user: @test_user)
  end

  def test_initialize
    policy(@test_user, @record).show?
  end

end
