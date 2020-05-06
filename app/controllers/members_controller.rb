class MembersController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def index
    @members = Member.all
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to admin_root_path
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to member_path(@member)
  end

  def new
    @member = Member.new
  end

  private

  def member_params
  params.require(:member).permit(:first_name, :last_name, :role, :description, :email, :instagram, :liens)
end
end
