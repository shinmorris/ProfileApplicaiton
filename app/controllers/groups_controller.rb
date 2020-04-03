class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
    redirect_to group_path
  end

  def create
    @group =Group.new(group_params)
    if
      @group.save
      redirect_to groups_path(@group.id), notice: "success"
    else
      render :new
    end

  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to root_path, notice: 'グループを更新しました'
    else
      render :edit
    end

  end

  private
  def group_params
    params.require(:group).permit(:name,:id, user_ids: [])
  end

end
