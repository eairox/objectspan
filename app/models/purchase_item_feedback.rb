class PurchaseItemFeedback < ActiveRecord::Base
  attr_accessible :buy_again_in_next_6_month, :feedback_improvement, :item_feedback_answer, :item_feedback_answer_comments, :item_feedback_rating_question_id, :item_rating, :purchase_item_id, :recommends_to_friend
end
