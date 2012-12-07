class PurchaseFeedbacksController < ApplicationController
  # GET /purchase_feedbacks
  # GET /purchase_feedbacks.json
  def index
    @purchase_feedbacks = PurchaseFeedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purchase_feedbacks }
    end
  end

  # GET /purchase_feedbacks/1
  # GET /purchase_feedbacks/1.json
  def show
    @purchase_feedback = PurchaseFeedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purchase_feedback }
    end
  end

  # GET /purchase_feedbacks/new
  # GET /purchase_feedbacks/new.json
  def new
    @purchase_feedback = PurchaseFeedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase_feedback }
    end
  end

  # GET /purchase_feedbacks/1/edit
  def edit
    @purchase_feedback = PurchaseFeedback.find(params[:id])
  end

  # POST /purchase_feedbacks
  # POST /purchase_feedbacks.json
  def create
    @purchase_feedback = PurchaseFeedback.new(params[:purchase_feedback])

    respond_to do |format|
      if @purchase_feedback.save
        format.html { redirect_to @purchase_feedback, notice: 'Purchase feedback was successfully created.' }
        format.json { render json: @purchase_feedback, status: :created, location: @purchase_feedback }
      else
        format.html { render action: "new" }
        format.json { render json: @purchase_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_feedbacks/1
  # PUT /purchase_feedbacks/1.json
  def update
    @purchase_feedback = PurchaseFeedback.find(params[:id])

    respond_to do |format|
      if @purchase_feedback.update_attributes(params[:purchase_feedback])
        format.html { redirect_to @purchase_feedback, notice: 'Purchase feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_feedbacks/1
  # DELETE /purchase_feedbacks/1.json
  def destroy
    @purchase_feedback = PurchaseFeedback.find(params[:id])
    @purchase_feedback.destroy

    respond_to do |format|
      format.html { redirect_to purchase_feedbacks_url }
      format.json { head :no_content }
    end
  end
end
