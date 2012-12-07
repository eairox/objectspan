class ReturnCategoriesController < ApplicationController
  # GET /return_categories
  # GET /return_categories.json
  def index
    @return_categories = ReturnCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @return_categories }
    end
  end

  # GET /return_categories/1
  # GET /return_categories/1.json
  def show
    @return_category = ReturnCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @return_category }
    end
  end

  # GET /return_categories/new
  # GET /return_categories/new.json
  def new
    @return_category = ReturnCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @return_category }
    end
  end

  # GET /return_categories/1/edit
  def edit
    @return_category = ReturnCategory.find(params[:id])
  end

  # POST /return_categories
  # POST /return_categories.json
  def create
    @return_category = ReturnCategory.new(params[:return_category])

    respond_to do |format|
      if @return_category.save
        format.html { redirect_to @return_category, notice: 'Return category was successfully created.' }
        format.json { render json: @return_category, status: :created, location: @return_category }
      else
        format.html { render action: "new" }
        format.json { render json: @return_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /return_categories/1
  # PUT /return_categories/1.json
  def update
    @return_category = ReturnCategory.find(params[:id])

    respond_to do |format|
      if @return_category.update_attributes(params[:return_category])
        format.html { redirect_to @return_category, notice: 'Return category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @return_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /return_categories/1
  # DELETE /return_categories/1.json
  def destroy
    @return_category = ReturnCategory.find(params[:id])
    @return_category.destroy

    respond_to do |format|
      format.html { redirect_to return_categories_url }
      format.json { head :no_content }
    end
  end
end
