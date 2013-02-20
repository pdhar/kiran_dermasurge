class ChatusersController < ApplicationController
  respond_to :json
  def index
    
    @chatuser = Chatuser.all
    render :json => @chatuser.to_json
  end

  def show
    @chatuser = Chatuser.find(params[:id])
    
    render :json => @chatuser.to_json(:include => :chatmessages) 
    
  end

  def create
    respond_with Chatuser.create(params[:entry])
  end

  def update
    respond_with Chatuser.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Chatuser.destroy(params[:id])
  end
  
  def getmessages
    respond_with Chatuser.find(params[:id]).chatmessages
  end
end
