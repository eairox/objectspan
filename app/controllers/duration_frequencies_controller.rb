class DurationFrequenciesController < ApplicationController
  # GET /duration_frequencies
  # GET /duration_frequencies.json
  def index
    @duration_frequencies = DurationFrequency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duration_frequencies }
    end
  end

  # GET /duration_frequencies/1
  # GET /duration_frequencies/1.json
  def show
    @duration_frequency = DurationFrequency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duration_frequency }
    end
  end

  # GET /duration_frequencies/new
  # GET /duration_frequencies/new.json
  def new
    @duration_frequency = DurationFrequency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duration_frequency }
    end
  end

  # GET /duration_frequencies/1/edit
  def edit
    @duration_frequency = DurationFrequency.find(params[:id])
  end

  # POST /duration_frequencies
  # POST /duration_frequencies.json
  def create
    @duration_frequency = DurationFrequency.new(params[:duration_frequency])

    respond_to do |format|
      if @duration_frequency.save
        format.html { redirect_to @duration_frequency, notice: 'Duration frequency was successfully created.' }
        format.json { render json: @duration_frequency, status: :created, location: @duration_frequency }
      else
        format.html { render action: "new" }
        format.json { render json: @duration_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duration_frequencies/1
  # PUT /duration_frequencies/1.json
  def update
    @duration_frequency = DurationFrequency.find(params[:id])

    respond_to do |format|
      if @duration_frequency.update_attributes(params[:duration_frequency])
        format.html { redirect_to @duration_frequency, notice: 'Duration frequency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duration_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duration_frequencies/1
  # DELETE /duration_frequencies/1.json
  def destroy
    @duration_frequency = DurationFrequency.find(params[:id])
    @duration_frequency.destroy

    respond_to do |format|
      format.html { redirect_to duration_frequencies_url }
      format.json { head :no_content }
    end
  end
end
