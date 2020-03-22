class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.new
  end

end
