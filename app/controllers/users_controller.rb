class UsersController < ApplicationController

  def admin
    @members = Member.all
  end

end
