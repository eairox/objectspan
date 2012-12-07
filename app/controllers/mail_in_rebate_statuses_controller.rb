class MailInRebateStatusesController < ApplicationController
  # GET /mail_in_rebate_statuses
  # GET /mail_in_rebate_statuses.json
  def index
    @mail_in_rebate_statuses = MailInRebateStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mail_in_rebate_statuses }
    end
  end

  # GET /mail_in_rebate_statuses/1
  # GET /mail_in_rebate_statuses/1.json
  def show
    @mail_in_rebate_status = MailInRebateStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mail_in_rebate_status }
    end
  end

  # GET /mail_in_rebate_statuses/new
  # GET /mail_in_rebate_statuses/new.json
  def new
    @mail_in_rebate_status = MailInRebateStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mail_in_rebate_status }
    end
  end

  # GET /mail_in_rebate_statuses/1/edit
  def edit
    @mail_in_rebate_status = MailInRebateStatus.find(params[:id])
  end

  # POST /mail_in_rebate_statuses
  # POST /mail_in_rebate_statuses.json
  def create
    @mail_in_rebate_status = MailInRebateStatus.new(params[:mail_in_rebate_status])

    respond_to do |format|
      if @mail_in_rebate_status.save
        format.html { redirect_to @mail_in_rebate_status, notice: 'Mail in rebate status was successfully created.' }
        format.json { render json: @mail_in_rebate_status, status: :created, location: @mail_in_rebate_status }
      else
        format.html { render action: "new" }
        format.json { render json: @mail_in_rebate_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mail_in_rebate_statuses/1
  # PUT /mail_in_rebate_statuses/1.json
  def update
    @mail_in_rebate_status = MailInRebateStatus.find(params[:id])

    respond_to do |format|
      if @mail_in_rebate_status.update_attributes(params[:mail_in_rebate_status])
        format.html { redirect_to @mail_in_rebate_status, notice: 'Mail in rebate status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mail_in_rebate_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_in_rebate_statuses/1
  # DELETE /mail_in_rebate_statuses/1.json
  def destroy
    @mail_in_rebate_status = MailInRebateStatus.find(params[:id])
    @mail_in_rebate_status.destroy

    respond_to do |format|
      format.html { redirect_to mail_in_rebate_statuses_url }
      format.json { head :no_content }
    end
  end
end
