class SupermarketsController < ApplicationController
  # GET /supermarkets
  # GET /supermarkets.json
  def index
    @supermarkets = Supermarket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supermarkets }
    end
  end

  # GET /supermarkets/1
  # GET /supermarkets/1.json
  def show
    @supermarket = Supermarket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supermarket }
    end
  end

  # GET /supermarkets/new
  # GET /supermarkets/new.json
  def new
    @supermarket = Supermarket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supermarket }
    end
  end

  # GET /supermarkets/1/edit
  def edit
    @supermarket = Supermarket.find(params[:id])
  end

  # POST /supermarkets
  # POST /supermarkets.json
  def create
    @supermarket = Supermarket.new(params[:supermarket])

    respond_to do |format|
      if @supermarket.save
        format.html { redirect_to @supermarket, notice: 'Supermarket was successfully created.' }
        format.json { render json: @supermarket, status: :created, location: @supermarket }
      else
        format.html { render action: "new" }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supermarkets/1
  # PUT /supermarkets/1.json
  def update
    @supermarket = Supermarket.find(params[:id])

    respond_to do |format|
      if @supermarket.update_attributes(params[:supermarket])
        format.html { redirect_to @supermarket, notice: 'Supermarket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supermarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supermarkets/1
  # DELETE /supermarkets/1.json
  def destroy
    @supermarket = Supermarket.find(params[:id])
    @supermarket.destroy

    respond_to do |format|
      format.html { redirect_to supermarkets_url }
      format.json { head :no_content }
    end
  end
end
