class Category < ActiveRecord::Base
	
	has_many :item_categorizations
	has_many :company_categorizations
	
	has_many :items, :through => :item_categorizations
	has_many :companies, :through => :company_categorizations


  attr_accessible :name
  
end
