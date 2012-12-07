class CompanyReturnPolicy < ActiveRecord::Base
	belongs_to :company

	
  attr_accessible :company_id, :return_policy, :return_policy_faq, :return_policy_url
end
