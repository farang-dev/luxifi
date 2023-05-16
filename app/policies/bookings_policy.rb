class BookingsPolicy < ApplicationPolicy

  def index?
    @record.user == user
  end

  def show?
    @record.user == user
  end

  def new?
    create?
  end

  def create?
    @record.user == user
  end

  def edit?
    update?
  end

  def update?
    @record.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end