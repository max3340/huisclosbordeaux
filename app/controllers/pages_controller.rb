class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :demandevideos, :quisommesnous, :contact]

  def home
    @categories = Category.all
  end

  def demandevideos
  end

  def quisommesnous
    @members = Member.all
  end

  def contact
  end

end
