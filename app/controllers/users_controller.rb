class UsersController < ApplicationController

  def admin
    @members = Member.all
    @categories = Category.all
    @projects = Project.all
    @souscategories = Souscategory.all
  end

end
