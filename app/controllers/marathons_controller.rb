class MarathonsController < ApplicationController
  # GET /marathons
  # GET /marathons.json
  def index
    @marathons = Marathon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @marathons }
    end
  end

  # GET /marathons/1
  # GET /marathons/1.json
  def show
    @marathon = Marathon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @marathon }
    end
  end

  # GET /marathons/new
  # GET /marathons/new.json
  def new
    @marathon = Marathon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @marathon }
    end
  end

  # GET /marathons/1/edit
  def edit
    @marathon = Marathon.find(params[:id])
  end

  # POST /marathons
  # POST /marathons.json
  def create
    @marathon = Marathon.new(params[:marathon])

    respond_to do |format|
      if @marathon.save
        format.html { redirect_to @marathon, notice: 'Marathon was successfully created.' }
        format.json { render json: @marathon, status: :created, location: @marathon }
      else
        format.html { render action: "new" }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /marathons/1
  # PUT /marathons/1.json
  def update
    @marathon = Marathon.find(params[:id])

    respond_to do |format|
      if @marathon.update_attributes(params[:marathon])
        format.html { redirect_to @marathon, notice: 'Marathon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @marathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marathons/1
  # DELETE /marathons/1.json
  def destroy
    @marathon = Marathon.find(params[:id])
    @marathon.destroy

    respond_to do |format|
      format.html { redirect_to marathons_url }
      format.json { head :no_content }
    end
  end
end
