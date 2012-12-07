class ItemCategorizationsController < ApplicationController
  # GET /item_categorizations
  # GET /item_categorizations.json
  def index
    @item_categorizations = ItemCategorization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_categorizations }
    end
  end

  # GET /item_categorizations/1
  # GET /item_categorizations/1.json
  def show
    @item_categorization = ItemCategorization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_categorization }
    end
  end

  # GET /item_categorizations/new
  # GET /item_categorizations/new.json
  def new
    @item_categorization = ItemCategorization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item_categorization }
    end
  end

  # GET /item_categorizations/1/edit
  def edit
    @item_categorization = ItemCategorization.find(params[:id])
  end

  # POST /item_categorizations
  # POST /item_categorizations.json
  def create
    @item_categorization = ItemCategorization.new(params[:item_categorization])

    respond_to do |format|
      if @item_categorization.save
        format.html { redirect_to @item_categorization, notice: 'Item categorization was successfully created.' }
        format.json { render json: @item_categorization, status: :created, location: @item_categorization }
      else
        format.html { render action: "new" }
        format.json { render json: @item_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_categorizations/1
  # PUT /item_categorizations/1.json
  def update
    @item_categorization = ItemCategorization.find(params[:id])

    respond_to do |format|
      if @item_categorization.update_attributes(params[:item_categorization])
        format.html { redirect_to @item_categorization, notice: 'Item categorization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_categorizations/1
  # DELETE /item_categorizations/1.json
  def destroy
    @item_categorization = ItemCategorization.find(params[:id])
    @item_categorization.destroy

    respond_to do |format|
      format.html { redirect_to item_categorizations_url }
      format.json { head :no_content }
    end
  end
end
