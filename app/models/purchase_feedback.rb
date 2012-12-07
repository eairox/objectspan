class PurchaseFeedback < ActiveRecord::Base
	belongs_to :purchase

  	attr_accessible :company_feedback_answer, :company_feedback_answer_comments, 
  :company_feedback_rating_question_id, :feedback_improvement, :purchase_id, 
  :recommends_to_friend, :shop_again_in_next_6_month, :shopping_experience_rating
end
