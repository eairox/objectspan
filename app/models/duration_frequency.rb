class DurationFrequency < ActiveRecord::Base
	has_many :store_return_category
	has_many :payment_method
	
  attr_accessible :name

  validates :name, :presence => true, uniqueness: { case_sensitive: false }

end
