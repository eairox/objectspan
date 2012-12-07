class ReturnDurationTypesController < ApplicationController
  # GET /return_duration_types
  # GET /return_duration_types.json
  def index
    @return_duration_types = ReturnDurationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @return_duration_types }
    end
  end

  # GET /return_duration_types/1
  # GET /return_duration_types/1.json
  def show
    @return_duration_type = ReturnDurationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @return_duration_type }
    end
  end

  # GET /return_duration_types/new
  # GET /return_duration_types/new.json
  def new
    @return_duration_type = ReturnDurationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @return_duration_type }
    end
  end

  # GET /return_duration_types/1/edit
  def edit
    @return_duration_type = ReturnDurationType.find(params[:id])
  end

  # POST /return_duration_types
  # POST /return_duration_types.json
  def create
    @return_duration_type = ReturnDurationType.new(params[:return_duration_type])

    respond_to do |format|
      if @return_duration_type.save
        format.html { redirect_to @return_duration_type, notice: 'Return duration type was successfully created.' }
        format.json { render json: @return_duration_type, status: :created, location: @return_duration_type }
      else
        format.html { render action: "new" }
        format.json { render json: @return_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /return_duration_types/1
  # PUT /return_duration_types/1.json
  def update
    @return_duration_type = ReturnDurationType.find(params[:id])

    respond_to do |format|
      if @return_duration_type.update_attributes(params[:return_duration_type])
        format.html { redirect_to @return_duration_type, notice: 'Return duration type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @return_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /return_duration_types/1
  # DELETE /return_duration_types/1.json
  def destroy
    @return_duration_type = ReturnDurationType.find(params[:id])
    @return_duration_type.destroy

    respond_to do |format|
      format.html { redirect_to return_duration_types_url }
      format.json { head :no_content }
    end
  end
end
