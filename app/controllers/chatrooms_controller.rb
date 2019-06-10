class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @chatrooms = Chatroom.all
    @messages = Message.all.order(:id)
  end
end
