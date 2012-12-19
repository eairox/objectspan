class StoreType < ActiveRecord::Base
  has_many :stores
  attr_accessible :name

  validates :name, :presence => true, uniqueness: { case_sensitive: false }
  
end
