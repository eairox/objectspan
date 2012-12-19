class UserItemRelationshipsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]


  # GET /user_item_relationships
  # GET /user_item_relationships.json
  def index
    @user_item_relationships = UserItemRelationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_item_relationships }
    end
  end

  # GET /user_item_relationships/1
  # GET /user_item_relationships/1.json
  def show
    @user_item_relationship = UserItemRelationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_item_relationship }
    end
  end

  # GET /user_item_relationships/new
  # GET /user_item_relationships/new.json
  def new
    @user_item_relationship = UserItemRelationship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_item_relationship }
    end
  end

  # GET /user_item_relationships/1/edit
  def edit
    @user_item_relationship = UserItemRelationship.find(params[:id])
  end

  # POST /user_item_relationships
  # POST /user_item_relationships.json
  def create
    @user_item_relationship = current_user.user_item_relationships.build(params[:user_item_relationship])
    
    respond_to do |format|
      if @user_item_relationship.save
        format.html { redirect_to root_url, notice: 'User item relationship was successfully created.' }
        format.json { render json: @user_item_relationship, status: :created, location: @user_item_relationship }
      else
        format.html { render 'static_pages/home' }
        format.json { render json: @user_item_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_item_relationships/1
  # PUT /user_item_relationships/1.json
  def update
    @user_item_relationship = UserItemRelationship.find(params[:id])

    respond_to do |format|
      if @user_item_relationship.update_attributes(params[:user_item_relationship])
        format.html { redirect_to @user_item_relationship, notice: 'User item relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_item_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_item_relationships/1
  # DELETE /user_item_relationships/1.json
  def destroy
    @user_item_relationship = UserItemRelationship.find(params[:id])
    @user_item_relationship.destroy

    respond_to do |format|
      format.html { redirect_to user_item_relationships_url }
      format.json { head :no_content }
    end
  end
end
