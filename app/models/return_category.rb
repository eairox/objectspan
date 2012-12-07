class ReturnCategory < ActiveRecord::Base
	has_many :store_return_category

  	attr_accessible :name

  	validates :name, :presence => true, uniqueness: { case_sensitive: false }
end
