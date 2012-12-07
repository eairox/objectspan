class CompanyItem < ActiveRecord::Base

belongs_to :company
belongs_to :item
belongs_to :store_return_category


  attr_accessible :company_id, :item_id, :price, :sku, :store_return_category_id, :url
end
