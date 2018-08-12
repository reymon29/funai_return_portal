class ImagePolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    return true
  end

  def destroy?
    return true
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
