class CategoryPolicy < ApplicationPolicy

  def create?
    user.role == 'admin'
  end

  def edit
    user.role == 'admin'
  end



  def update
    user.role == 'admin'
  end
end
