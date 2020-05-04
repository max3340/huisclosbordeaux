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
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def destroy
    @categorie = Category.find(params[:id])
    @categorie.destroy
    redirect_to admin_root_path
  end

  def update
    @categorie = Category.find(params[:id])
    @categorie.update(category_params)
    redirect_to category_path(@categorie)
  end

  def new
    @categorie = Category.new
  end

  private

  def category_params
  params.require(:category).permit(:name)
end
end
