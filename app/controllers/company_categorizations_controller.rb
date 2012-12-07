class CompanyCategorizationsController < ApplicationController
  # GET /company_categorizations
  # GET /company_categorizations.json
  def index
    @company_categorizations = CompanyCategorization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_categorizations }
    end
  end

  # GET /company_categorizations/1
  # GET /company_categorizations/1.json
  def show
    @company_categorization = CompanyCategorization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_categorization }
    end
  end

  # GET /company_categorizations/new
  # GET /company_categorizations/new.json
  def new
    @company_categorization = CompanyCategorization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_categorization }
    end
  end

  # GET /company_categorizations/1/edit
  def edit
    @company_categorization = CompanyCategorization.find(params[:id])
  end

  # POST /company_categorizations
  # POST /company_categorizations.json
  def create
    @company_categorization = CompanyCategorization.new(params[:company_categorization])

    respond_to do |format|
      if @company_categorization.save
        format.html { redirect_to @company_categorization, notice: 'Company categorization was successfully created.' }
        format.json { render json: @company_categorization, status: :created, location: @company_categorization }
      else
        format.html { render action: "new" }
        format.json { render json: @company_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_categorizations/1
  # PUT /company_categorizations/1.json
  def update
    @company_categorization = CompanyCategorization.find(params[:id])

    respond_to do |format|
      if @company_categorization.update_attributes(params[:company_categorization])
        format.html { redirect_to @company_categorization, notice: 'Company categorization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_categorizations/1
  # DELETE /company_categorizations/1.json
  def destroy
    @company_categorization = CompanyCategorization.find(params[:id])
    @company_categorization.destroy

    respond_to do |format|
      format.html { redirect_to company_categorizations_url }
      format.json { head :no_content }
    end
  end
end
