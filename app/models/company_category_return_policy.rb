class CompanyCategoryReturnPolicy < ActiveRecord::Base

	belongs_to :company
	belongs_to :return_category
	belongs_to :exchange_duration_type
	belongs_to :return_duration_type

  attr_accessible :company_id, :exchange_duration, :exchange_duration_type_id, :holiday_purchase_date_from, 
  :holiday_purchase_date_to, :holiday_return_date, :open_used_returnable, :restocking_fee_precentage, :restrictions, 
  :return_category_id, :return_duration, :return_duration_type_id, :rma_required


  def name
  	return_category.name
  end


end
