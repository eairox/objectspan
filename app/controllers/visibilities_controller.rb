class VisibilitiesController < ApplicationController
  # GET /visibilities
  # GET /visibilities.json
  def index
    @visibilities = Visibility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visibilities }
    end
  end

  # GET /visibilities/1
  # GET /visibilities/1.json
  def show
    @visibility = Visibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visibility }
    end
  end

  # GET /visibilities/new
  # GET /visibilities/new.json
  def new
    @visibility = Visibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visibility }
    end
  end

  # GET /visibilities/1/edit
  def edit
    @visibility = Visibility.find(params[:id])
  end

  # POST /visibilities
  # POST /visibilities.json
  def create
    @visibility = Visibility.new(params[:visibility])

    respond_to do |format|
      if @visibility.save
        format.html { redirect_to @visibility, notice: 'Visibility was successfully created.' }
        format.json { render json: @visibility, status: :created, location: @visibility }
      else
        format.html { render action: "new" }
        format.json { render json: @visibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visibilities/1
  # PUT /visibilities/1.json
  def update
    @visibility = Visibility.find(params[:id])

    respond_to do |format|
      if @visibility.update_attributes(params[:visibility])
        format.html { redirect_to @visibility, notice: 'Visibility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visibilities/1
  # DELETE /visibilities/1.json
  def destroy
    @visibility = Visibility.find(params[:id])
    @visibility.destroy

    respond_to do |format|
      format.html { redirect_to visibilities_url }
      format.json { head :no_content }
    end
  end
end
