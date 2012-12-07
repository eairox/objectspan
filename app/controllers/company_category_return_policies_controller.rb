class CompanyCategoryReturnPoliciesController < ApplicationController
  # GET /company_category_return_policies
  # GET /company_category_return_policies.json
  def index
    @company_category_return_policies = CompanyCategoryReturnPolicy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_category_return_policies }
    end
  end

  # GET /company_category_return_policies/1
  # GET /company_category_return_policies/1.json
  def show
    @company_category_return_policy = CompanyCategoryReturnPolicy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_category_return_policy }
    end
  end

  # GET /company_category_return_policies/new
  # GET /company_category_return_policies/new.json
  def new
    @company_category_return_policy = CompanyCategoryReturnPolicy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_category_return_policy }
    end
  end

  # GET /company_category_return_policies/1/edit
  def edit
    @company_category_return_policy = CompanyCategoryReturnPolicy.find(params[:id])
  end

  # POST /company_category_return_policies
  # POST /company_category_return_policies.json
  def create
    @company_category_return_policy = CompanyCategoryReturnPolicy.new(params[:company_category_return_policy])

    respond_to do |format|
      if @company_category_return_policy.save
        format.html { redirect_to @company_category_return_policy, notice: 'Company category return policy was successfully created.' }
        format.json { render json: @company_category_return_policy, status: :created, location: @company_category_return_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @company_category_return_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_category_return_policies/1
  # PUT /company_category_return_policies/1.json
  def update
    @company_category_return_policy = CompanyCategoryReturnPolicy.find(params[:id])

    respond_to do |format|
      if @company_category_return_policy.update_attributes(params[:company_category_return_policy])
        format.html { redirect_to @company_category_return_policy, notice: 'Company category return policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_category_return_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_category_return_policies/1
  # DELETE /company_category_return_policies/1.json
  def destroy
    @company_category_return_policy = CompanyCategoryReturnPolicy.find(params[:id])
    @company_category_return_policy.destroy

    respond_to do |format|
      format.html { redirect_to company_category_return_policies_url }
      format.json { head :no_content }
    end
  end
end
