class PurchaseItemsController < ApplicationController

 

  # GET /purchase_items
  # GET /purchase_items.json
  def index
    @purchase_items = PurchaseItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_items }
    end
  end

  # GET /purchase_items/1
  # GET /purchase_items/1.json
  def show
    @purchase = Purchase.find(params[:purchase_id])
    @purchase_item = @purchase.purchase_items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_item }
    end
  end

  # GET /purchase_items/new
  # GET /purchase_items/new.json
  def new
    @purchase_item = PurchaseItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_item }
    end
  end

  # GET /purchase_items/1/edit
  def edit
    @purchase_item = PurchaseItem.find(params[:id])
  end

  # POST /purchase_items
  # POST /purchase_items.json
  def create
    @purchase_item = PurchaseItem.find(params[:id])
   

    respond_to do |format|
      if @purchase_item.save
        format.html { redirect_to purchase_path(@purchase), notice: 'Purchase item was successfully created.' }
        format.json { render json: @purchase, status: :created, location: @purchase }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_items/1
  # PUT /purchase_items/1.json
  def update
    @purchase_item = PurchaseItem.find(params[:id])

    respond_to do |format|
      if @purchase_item.update_attributes(params[:purchase_item])
        format.html { redirect_to @purchase_item, notice: 'Purchase item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_items/1
  # DELETE /purchase_items/1.json
  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    @purchase_item = @purchase.purchase_items.find(params[:id])
    @purchase_item.destroy

    respond_to do |format|
      format.html { redirect_to purchase_path(@purchase) }
      format.json { head :no_content }
    end
  end

 

end
