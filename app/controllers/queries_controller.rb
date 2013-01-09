class QueriesController < ApplicationController

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @query }
    end
  end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(params[:query])

    respond_to do |format|
      if @query.valid?
        
        # Send Email
        UserMailer.contact_us(@query).deliver
        format.html { redirect_to root_url, notice: 'Message sent! Thank you for contacting us. ' + @query.name}
        
      else
        format.html { render action: "new" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

end
