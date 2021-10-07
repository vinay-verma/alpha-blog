class UsersController < ApplicationController

  before_action :authorize_user, except: [:create]

  private

  def authorize_user
    policy_scope(User)
  end

end
