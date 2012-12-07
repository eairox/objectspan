class PurchaseStatusesController < ApplicationController
  # GET /purchase_statuses
  # GET /purchase_statuses.json
  def index
    @purchase_statuses = PurchaseStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_statuses }
    end
  end

  # GET /purchase_statuses/1
  # GET /purchase_statuses/1.json
  def show
    @purchase_status = PurchaseStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_status }
    end
  end

  # GET /purchase_statuses/new
  # GET /purchase_statuses/new.json
  def new
    @purchase_status = PurchaseStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_status }
    end
  end

  # GET /purchase_statuses/1/edit
  def edit
    @purchase_status = PurchaseStatus.find(params[:id])
  end

  # POST /purchase_statuses
  # POST /purchase_statuses.json
  def create
    @purchase_status = PurchaseStatus.new(params[:purchase_status])

    respond_to do |format|
      if @purchase_status.save
        format.html { redirect_to @purchase_status, notice: 'Purchase status was successfully created.' }
        format.json { render json: @purchase_status, status: :created, location: @purchase_status }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_statuses/1
  # PUT /purchase_statuses/1.json
  def update
    @purchase_status = PurchaseStatus.find(params[:id])

    respond_to do |format|
      if @purchase_status.update_attributes(params[:purchase_status])
        format.html { redirect_to @purchase_status, notice: 'Purchase status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_statuses/1
  # DELETE /purchase_statuses/1.json
  def destroy
    @purchase_status = PurchaseStatus.find(params[:id])
    @purchase_status.destroy

    respond_to do |format|
      format.html { redirect_to purchase_statuses_url }
      format.json { head :no_content }
    end
  end
end
