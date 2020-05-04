class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!
  include Pundit
  def show
    @projet = Project.find(params[:id])
  end

  def edit
    @projet = Project.find(params[:id])
    authorize @projet
  end

  def index
    @projets = Project.all
  end

  def create
    @projet = Project.new(project_params)
    authorize @projet

    if @projet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @projet = Project.find(params[:id])
    authorize @projet
    @projet.destroy
    redirect_to root_path
  end

  def update
    @projet = Project.find(params[:id])
    authorize @projet
    @projet.update(projet_params)
    redirect_to projet_path(@projet)
  end

  def new
    @projet = Project.new
  end

  private

  def project_params
  params.require(:project).permit(:name, :souscategory_id, :extrait, :details, :youtube, :site)
end
end
