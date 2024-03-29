class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def index
  	@users = User.paginate(page: params[:page])
  end

  def new
  	@user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @purchases = @user.purchases.paginate(page: params[:page])
    @purchase_items = @user.purchases.collect{|i| i.purchase_items}.flatten
    @all_purchase_items = @user.purchases.collect{|i| i.purchase_items}.flatten
    @owned_items = @user.owned_items.paginate(page: params[:page])
    @needed_items = @user.needed_items.paginate(page: params[:page])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Object Span!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if (@user.update_attributes(params[:user]))
		flash[:success] = "Profile updated"
		sign_in @user
		redirect_to @user
  	else
  		render 'edit'
  	end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end


  private

    def correct_user
      	@user = User.find(params[:id])
      	redirect_to root_path, notice: "You don't have authorization to change other user" unless current_user?(@user) || current_user.admin?
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
