class SpacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  # def destroy?
  #   record.user == user
  # end
  #
  
  def update?
    record.user == user
  end

  def edit?
    record.user == user
  end

end
