class ChatmessagesController < ApplicationController
  respond_to :json
  def create
    respond_with Chatmessage.create(params[:chatmessage])
  end
  
  def index
    
    respond_with Chatmessage.all
    
  end
end
