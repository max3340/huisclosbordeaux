class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @categories = Category.all
  end

  def demandevideos
    @contact = Page.new(params[:page])
  end

  def quisommesnous
    @members = Member.all
  end

  def contact
  end

   def create
    @contact = Page.new(params[:page])
    @contact.request = request
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Page.new

        redirect_to root_path
      else
        render :contact_form
      end
    end

  def messageok
  end

end

