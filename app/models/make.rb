class Make < ActiveRecord::Base
  has_many :items
  has_many :purchase_items, :through => :items
  attr_accessible :name

  validates :name, :presence => true, uniqueness: { case_sensitive: false }
  
end
