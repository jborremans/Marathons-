class MarathonRunnersController < ApplicationController
  # GET /marathon_runners
  # GET /marathon_runners.json
  def index
    @marathon_runners = MarathonRunner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @marathon_runners }
    end
  end

  # GET /marathon_runners/1
  # GET /marathon_runners/1.json
  def show
    @marathon_runner = MarathonRunner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @marathon_runner }
    end
  end

  # GET /marathon_runners/new
  # GET /marathon_runners/new.json
  def new
    @marathon_runner = MarathonRunner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @marathon_runner }
    end
  end

  # GET /marathon_runners/1/edit
  def edit
    @marathon_runner = MarathonRunner.find(params[:id])
  end

  # POST /marathon_runners
  # POST /marathon_runners.json
  def create
    @marathon_runner = MarathonRunner.new(params[:marathon_runner])

    respond_to do |format|
      if @marathon_runner.save
        format.html { redirect_to @marathon_runner, notice: 'Marathon runner was successfully created.' }
        format.json { render json: @marathon_runner, status: :created, location: @marathon_runner }
      else
        format.html { render action: "new" }
        format.json { render json: @marathon_runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /marathon_runners/1
  # PUT /marathon_runners/1.json
  def update
    @marathon_runner = MarathonRunner.find(params[:id])

    respond_to do |format|
      if @marathon_runner.update_attributes(params[:marathon_runner])
        format.html { redirect_to @marathon_runner, notice: 'Marathon runner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @marathon_runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marathon_runners/1
  # DELETE /marathon_runners/1.json
  def destroy
    @marathon_runner = MarathonRunner.find(params[:id])
    @marathon_runner.destroy

    respond_to do |format|
      format.html { redirect_to marathon_runners_url }
      format.json { head :no_content }
    end
  end
end
