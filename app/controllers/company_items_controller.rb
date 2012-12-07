class CompanyItemsController < ApplicationController
  # GET /company_items
  # GET /company_items.json
  def index
    @company_items = CompanyItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_items }
    end
  end

  # GET /company_items/1
  # GET /company_items/1.json
  def show
    @company_item = CompanyItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_item }
    end
  end

  # GET /company_items/new
  # GET /company_items/new.json
  def new
    @company_item = CompanyItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_item }
    end
  end

  # GET /company_items/1/edit
  def edit
    @company_item = CompanyItem.find(params[:id])
  end

  # POST /company_items
  # POST /company_items.json
  def create
    @company_item = CompanyItem.new(params[:company_item])

    respond_to do |format|
      if @company_item.save
        format.html { redirect_to @company_item, notice: 'Company item was successfully created.' }
        format.json { render json: @company_item, status: :created, location: @company_item }
      else
        format.html { render action: "new" }
        format.json { render json: @company_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_items/1
  # PUT /company_items/1.json
  def update
    @company_item = CompanyItem.find(params[:id])

    respond_to do |format|
      if @company_item.update_attributes(params[:company_item])
        format.html { redirect_to @company_item, notice: 'Company item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_items/1
  # DELETE /company_items/1.json
  def destroy
    @company_item = CompanyItem.find(params[:id])
    @company_item.destroy

    respond_to do |format|
      format.html { redirect_to company_items_url }
      format.json { head :no_content }
    end
  end
end
