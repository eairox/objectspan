class PurchaseItemStatusesController < ApplicationController
  # GET /purchase_item_statuses
  # GET /purchase_item_statuses.json
  def index
    @purchase_item_statuses = PurchaseItemStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_item_statuses }
    end
  end

  # GET /purchase_item_statuses/1
  # GET /purchase_item_statuses/1.json
  def show
    @purchase_item_status = PurchaseItemStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_item_status }
    end
  end

  # GET /purchase_item_statuses/new
  # GET /purchase_item_statuses/new.json
  def new
    @purchase_item_status = PurchaseItemStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_item_status }
    end
  end

  # GET /purchase_item_statuses/1/edit
  def edit
    @purchase_item_status = PurchaseItemStatus.find(params[:id])
  end

  # POST /purchase_item_statuses
  # POST /purchase_item_statuses.json
  def create
    @purchase_item_status = PurchaseItemStatus.new(params[:purchase_item_status])

    respond_to do |format|
      if @purchase_item_status.save
        format.html { redirect_to @purchase_item_status, notice: 'Purchase item status was successfully created.' }
        format.json { render json: @purchase_item_status, status: :created, location: @purchase_item_status }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_item_statuses/1
  # PUT /purchase_item_statuses/1.json
  def update
    @purchase_item_status = PurchaseItemStatus.find(params[:id])

    respond_to do |format|
      if @purchase_item_status.update_attributes(params[:purchase_item_status])
        format.html { redirect_to @purchase_item_status, notice: 'Purchase item status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_item_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_item_statuses/1
  # DELETE /purchase_item_statuses/1.json
  def destroy
    @purchase_item_status = PurchaseItemStatus.find(params[:id])
    @purchase_item_status.destroy

    respond_to do |format|
      format.html { redirect_to purchase_item_statuses_url }
      format.json { head :no_content }
    end
  end
end
