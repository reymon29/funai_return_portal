class ReturnPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    record.user == user || user.admin || user.aaronsmgr?
  end

  def update?
    record.user == user || user.admin || user.aaronsmgr?
  end

  def destroy?
    user.admin
  end

  class Scope < Scope
    def resolve
      # scope.all
      if user.admin?
        scope.all
      elsif user.aaronsmgr?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
end
