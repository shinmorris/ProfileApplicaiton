class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.new
  end

  def create
    @message = Message,create(message_params)
    redirect_to group_message_path(@group.id)
  end

  private

  def message_params
    params.require(:message).permit(:body,:image).merge(group_ids: current_user)
  end

end
