class ProfilesController < ApplicationController
  def index
    @message = Message.new
  end

end
