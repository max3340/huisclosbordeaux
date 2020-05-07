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
    respond_to do |format|
      if @contact.deliver
        # re-initialize page object for cleared form
        @contact = Page.new
        format.html { render 'demandevideos'}

      else
        format.html { render 'demandevideos' }

      end
    end
  end

  def messageok
  end

end

