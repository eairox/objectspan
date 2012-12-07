class State < ActiveRecord::Base
	belongs_to :country

	has_many :stores
	has_many :companies
	

  attr_accessible :country_id, :name, :state_code
end
