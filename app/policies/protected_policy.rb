# frozen_string_literal: true

class ProtectedPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    raise Pundit::NotAuthorizedError, 'You must log in to perform this action' unless user

    super(user, record)
  end

  class Scope
    def initialize(user, scope)
      raise Pundit::NotAuthorizedError, 'You must log in to perform this action' unless user

      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
