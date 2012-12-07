class CompanyCountry < ActiveRecord::Base
	belongs_to :company
	belongs_to :country
	
  attr_accessible :company_id, :country_id
end
