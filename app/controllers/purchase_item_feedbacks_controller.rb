class PurchaseItemFeedbacksController < ApplicationController
  # GET /purchase_item_feedbacks
  # GET /purchase_item_feedbacks.json
  def index
    @purchase_item_feedbacks = PurchaseItemFeedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_item_feedbacks }
    end
  end

  # GET /purchase_item_feedbacks/1
  # GET /purchase_item_feedbacks/1.json
  def show
    @purchase_item_feedback = PurchaseItemFeedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_item_feedback }
    end
  end

  # GET /purchase_item_feedbacks/new
  # GET /purchase_item_feedbacks/new.json
  def new
    @purchase_item_feedback = PurchaseItemFeedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_item_feedback }
    end
  end

  # GET /purchase_item_feedbacks/1/edit
  def edit
    @purchase_item_feedback = PurchaseItemFeedback.find(params[:id])
  end

  # POST /purchase_item_feedbacks
  # POST /purchase_item_feedbacks.json
  def create
    @purchase_item_feedback = PurchaseItemFeedback.new(params[:purchase_item_feedback])

    respond_to do |format|
      if @purchase_item_feedback.save
        format.html { redirect_to @purchase_item_feedback, notice: 'Purchase item feedback was successfully created.' }
        format.json { render json: @purchase_item_feedback, status: :created, location: @purchase_item_feedback }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_item_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_item_feedbacks/1
  # PUT /purchase_item_feedbacks/1.json
  def update
    @purchase_item_feedback = PurchaseItemFeedback.find(params[:id])

    respond_to do |format|
      if @purchase_item_feedback.update_attributes(params[:purchase_item_feedback])
        format.html { redirect_to @purchase_item_feedback, notice: 'Purchase item feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_item_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_item_feedbacks/1
  # DELETE /purchase_item_feedbacks/1.json
  def destroy
    @purchase_item_feedback = PurchaseItemFeedback.find(params[:id])
    @purchase_item_feedback.destroy

    respond_to do |format|
      format.html { redirect_to purchase_item_feedbacks_url }
      format.json { head :no_content }
    end
  end
end
