class Country < ActiveRecord::Base
	has_many :states
	has_many :companies
	has_many :stores
	
  attr_accessible :code, :is_obsolete, :name, :rank

  validates :name, :presence => true, uniqueness: { case_sensitive: false }
end
