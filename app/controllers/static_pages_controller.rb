class StaticPagesController < ApplicationController
  def home
  	if signed_in?
      @purchases  = current_user.purchases.build
      @purchase_items = current_user.user_purchases
      @user_item_relationships = current_user.user_item_relationships.build if signed_in?
    end
  end

  def product
  end

  def contact
  end
end
