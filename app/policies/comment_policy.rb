class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end

  def destroy
    record.user == user
  end
end
