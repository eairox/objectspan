class CompanyContactsController < ApplicationController
  # GET /company_contacts
  # GET /company_contacts.json
  def index
    @company_contacts = CompanyContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_contacts }
    end
  end

  # GET /company_contacts/1
  # GET /company_contacts/1.json
  def show
    @company_contact = CompanyContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_contact }
    end
  end

  # GET /company_contacts/new
  # GET /company_contacts/new.json
  def new
    @company_contact = CompanyContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_contact }
    end
  end

  # GET /company_contacts/1/edit
  def edit
    @company_contact = CompanyContact.find(params[:id])
  end

  # POST /company_contacts
  # POST /company_contacts.json
  def create
    @company_contact = CompanyContact.new(params[:company_contact])

    respond_to do |format|
      if @company_contact.save
        format.html { redirect_to @company_contact, notice: 'Company contact was successfully created.' }
        format.json { render json: @company_contact, status: :created, location: @company_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @company_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_contacts/1
  # PUT /company_contacts/1.json
  def update
    @company_contact = CompanyContact.find(params[:id])

    respond_to do |format|
      if @company_contact.update_attributes(params[:company_contact])
        format.html { redirect_to @company_contact, notice: 'Company contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_contacts/1
  # DELETE /company_contacts/1.json
  def destroy
    @company_contact = CompanyContact.find(params[:id])
    @company_contact.destroy

    respond_to do |format|
      format.html { redirect_to company_contacts_url }
      format.json { head :no_content }
    end
  end
end
