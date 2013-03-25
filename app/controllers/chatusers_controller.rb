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
    
    
    @chatuser = Chatuser.create(params[:chatuser])
    if (defined? params[:chatmessage])
      #Rails.logger.debug("Paramans defined Server:")
      params[:chatmessage][:chatuser_id] = @chatuser.id
      Chatmessage.create(params[:chatmessage])
    end
    #Rails.logger.debug("Hello Server #{params[:chatmessage]}")
    respond_with @chatuser
  end

  def update
    
    respond_with Chatuser.update(params[:id], params[:chatuser])
      #respond_to do |format|
      #  format.json { head :ok }
      #end
    #end
    
  end

  def destroy
    respond_with Chatuser.destroy(params[:id])
  end
  
  def getmessages
    respond_with Chatuser.find(params[:id]).chatmessages
  end
end
