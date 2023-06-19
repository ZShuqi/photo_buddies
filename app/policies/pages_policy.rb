class PagesPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  # def home?
  #   true
  # end

  # def community?
  #   # record.user == user
  #   true
  # end

  # def show?
  #   true
  # end

  # def search?
  #   true
  # end

  # def profile?
  #   true
  # end
end
