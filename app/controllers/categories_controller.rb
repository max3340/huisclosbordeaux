class CategoriesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!

  def show
    @categorie = Category.find(params[:id])
  end

  def edit
    @categorie = Category.find(params[:id])
    authorize @categorie
  end

  def index
    @categories = Category.all
  end

  def create
    @categorie = Category.new(category_params)
    authorize @categorie

    if @categorie.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @categorie = Category.find(params[:id])
    authorize @categorie
    @categorie.destroy
    redirect_to root_path
  end

  def update
    @categorie = Category.find(params[:id])
    authorize @categorie
    @categorie.update(categorie_params)
    redirect_to categorie_path(@categorie)
  end

  def new
    @categorie = Category.new
  end

  private

  def category_params
  params.require(:category).permit(:name)
end
end
