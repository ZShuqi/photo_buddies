class EventPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all # policy_scope(Event)
    end
  end

  def create?
    true
  end

  def destroy?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end
end
