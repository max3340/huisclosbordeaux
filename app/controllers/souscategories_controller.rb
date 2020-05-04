class SouscategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  include Pundit
  def show
    @souscategorie = Souscategory.find(params[:id])
  end

  def edit
    @souscategorie = Souscategory.find(params[:id])
    authorize @souscategorie
  end

  def index
    @souscategories = Souscategory.all
  end

  def create
    @souscategorie = Souscategory.new(souscategory_params)
    authorize @souscategorie

    if @souscategorie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @souscategorie = Souscategory.find(params[:id])
    authorize @souscategorie
    @souscategorie.destroy
    redirect_to root_path
  end

  def update
    @souscategorie = Souscategory.find(params[:id])
    authorize @souscategorie
    @souscategorie.update(souscategorie_params)
    redirect_to souscategorie_path(@souscategorie)
  end

  def new
    @souscategorie = Souscategory.new
  end

  private

  def souscategory_params
  params.require(:souscategory).permit(:name, :category_id)
end
end
