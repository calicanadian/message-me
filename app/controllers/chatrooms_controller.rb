class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @chatrooms = Chatroom.all
    @message = Message.new
    @messages = Message.custom_display
  end
end
