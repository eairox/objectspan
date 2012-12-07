class CompanyContact < ActiveRecord::Base
	belongs_to :company
	
  attr_accessible :company_id, :contact_type, :contact_value
end
