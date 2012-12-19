class Purchase < ActiveRecord::Base
	belongs_to :payment_method
	belongs_to :user
	belongs_to :store

	has_one :purchase_feedback, :dependent => :destroy
  has_many :purchase_items, :dependent => :destroy

	has_attached_file :receipt, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "100x100>" },
							  :url  => "/assets/purchases/receipts/:id/:style/:basename.:extension",
                  			  :path => ":rails_root/public/assets/purchases/receipts/:id/:style/:basename.:extension"

  	
  validates_attachment_size :receipt, :less_than => 5.megabytes
	validates_attachment_content_type :receipt, :content_type => ['image/jpeg', 'image/png', "application/pdf"]

	accepts_nested_attributes_for :purchase_items, :allow_destroy => true, :reject_if => lambda {|a| a[:item_id].blank?}


	attr_accessible :receipt, :receipt_file_name, :name, :payment_method_id, :purchase_date, 
	:store_id,:order_number, :purchase_items_attributes, :store_name, :seller_name, :store_type

	validates :user_id, presence: true
	validates :purchase_date, presence: true

	default_scope order: 'purchases.purchase_date DESC'


  def store_name
		store.try(:name)
  end

	def store_name=(name)
    self.store = Store.find_or_create_by_name(name) if name.present?
  end
  
  def store_type
    store.type
  end

  def store_type=(name)
    self.store.type = name if name.present?
  end 

  def seller_name
    store.company.try(:name)
  end

  def seller_name=(name)
    self.store.company_name(name) if name.present?
  end

  def mygmail
    gmail = Gmail.connect("eairox@gmail.com", "Aarjoo79!")
    gmail.inbox
  end

end
