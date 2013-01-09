class CompanyItem < ActiveRecord::Base

belongs_to :company
belongs_to :item
belongs_to :company_category_return_policy


  attr_accessible :company_id, :item_id, :price, :sku, :company_category_return_policy_id, :url
end
