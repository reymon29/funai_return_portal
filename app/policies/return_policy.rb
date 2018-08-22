class ReturnPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    record.user == user || user.admin
  end

  def update?
    record.user == user || user.admin
  end

  def destroy?
    user.admin
  end

  class Scope < Scope
    def resolve
      # scope.all
      if user.admin?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
end
