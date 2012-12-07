class Visibility < ActiveRecord::Base
	has_many :purchases
  attr_accessible :name

  validates :name, :presence => true, uniqueness: { case_sensitive: false }
  
end
