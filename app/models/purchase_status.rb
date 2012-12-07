class PurchaseStatus < ActiveRecord::Base
	has_many :purchase_items
	
  attr_accessible :name

  validates :name, :presence => true, uniqueness: { case_sensitive: false }
end
