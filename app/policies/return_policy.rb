class ReturnPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    record.user == user
  end

  def update?
    record.user == user
  end
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end
end
