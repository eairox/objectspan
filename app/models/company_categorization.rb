class CompanyCategorization < ActiveRecord::Base

	belongs_to :category
	belongs_to :company

  attr_accessible :category_id, :company_id
end
