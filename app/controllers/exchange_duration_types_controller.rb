class ExchangeDurationTypesController < ApplicationController
  # GET /exchange_duration_types
  # GET /exchange_duration_types.json
  def index
    @exchange_duration_types = ExchangeDurationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exchange_duration_types }
    end
  end

  # GET /exchange_duration_types/1
  # GET /exchange_duration_types/1.json
  def show
    @exchange_duration_type = ExchangeDurationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exchange_duration_type }
    end
  end

  # GET /exchange_duration_types/new
  # GET /exchange_duration_types/new.json
  def new
    @exchange_duration_type = ExchangeDurationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exchange_duration_type }
    end
  end

  # GET /exchange_duration_types/1/edit
  def edit
    @exchange_duration_type = ExchangeDurationType.find(params[:id])
  end

  # POST /exchange_duration_types
  # POST /exchange_duration_types.json
  def create
    @exchange_duration_type = ExchangeDurationType.new(params[:exchange_duration_type])

    respond_to do |format|
      if @exchange_duration_type.save
        format.html { redirect_to @exchange_duration_type, notice: 'Exchange duration type was successfully created.' }
        format.json { render json: @exchange_duration_type, status: :created, location: @exchange_duration_type }
      else
        format.html { render action: "new" }
        format.json { render json: @exchange_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exchange_duration_types/1
  # PUT /exchange_duration_types/1.json
  def update
    @exchange_duration_type = ExchangeDurationType.find(params[:id])

    respond_to do |format|
      if @exchange_duration_type.update_attributes(params[:exchange_duration_type])
        format.html { redirect_to @exchange_duration_type, notice: 'Exchange duration type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exchange_duration_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exchange_duration_types/1
  # DELETE /exchange_duration_types/1.json
  def destroy
    @exchange_duration_type = ExchangeDurationType.find(params[:id])
    @exchange_duration_type.destroy

    respond_to do |format|
      format.html { redirect_to exchange_duration_types_url }
      format.json { head :no_content }
    end
  end
end
