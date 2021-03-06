class FacebooksController < ApplicationController
  # GET /facebooks
  # GET /facebooks.json
  def index
    @facebooks = Facebook.all
@facebook = Facebook.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facebooks }
    end
  end

  # GET /facebooks/1
  # GET /facebooks/1.json
  def show
    @facebook = Facebook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facebook }
    end
  end

  # GET /facebooks/new
  # GET /facebooks/new.json
  def new
    @facebook = Facebook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facebook }
    end
  end

  # GET /facebooks/1/edit
  def edit
    @facebook = Facebook.find(params[:id])
  end

  # POST /facebooks
  # POST /facebooks.json
  def create
    @facebook = Facebook.new(params[:facebook])

    respond_to do |format|
      if @facebook.save
        format.html { redirect_to facebooks_path, notice: 'Facebook was successfully created.' }
        format.json { render json: @facebook, status: :created, location: @facebook }
      else
        format.html { render action: "index" }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facebooks/1
  # PUT /facebooks/1.json
  def update
    @facebook = Facebook.find(params[:id])

    respond_to do |format|
      if @facebook.update_attributes(params[:facebook])
        format.html { redirect_to @facebook, notice: 'Facebook was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @facebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebooks/1
  # DELETE /facebooks/1.json
  def destroy
    @facebook = Facebook.find(params[:id])
    @facebook.destroy

    respond_to do |format|
      format.html { redirect_to facebooks_url }
      format.json { head :ok }
    end
  end
end
