class CompanyCountriesController < ApplicationController
  # GET /company_countries
  # GET /company_countries.json
  def index
    @company_countries = CompanyCountry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_countries }
    end
  end

  # GET /company_countries/1
  # GET /company_countries/1.json
  def show
    @company_country = CompanyCountry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_country }
    end
  end

  # GET /company_countries/new
  # GET /company_countries/new.json
  def new
    @company_country = CompanyCountry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_country }
    end
  end

  # GET /company_countries/1/edit
  def edit
    @company_country = CompanyCountry.find(params[:id])
  end

  # POST /company_countries
  # POST /company_countries.json
  def create
    @company_country = CompanyCountry.new(params[:company_country])

    respond_to do |format|
      if @company_country.save
        format.html { redirect_to @company_country, notice: 'Company country was successfully created.' }
        format.json { render json: @company_country, status: :created, location: @company_country }
      else
        format.html { render action: "new" }
        format.json { render json: @company_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_countries/1
  # PUT /company_countries/1.json
  def update
    @company_country = CompanyCountry.find(params[:id])

    respond_to do |format|
      if @company_country.update_attributes(params[:company_country])
        format.html { redirect_to @company_country, notice: 'Company country was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_countries/1
  # DELETE /company_countries/1.json
  def destroy
    @company_country = CompanyCountry.find(params[:id])
    @company_country.destroy

    respond_to do |format|
      format.html { redirect_to company_countries_url }
      format.json { head :no_content }
    end
  end
end
