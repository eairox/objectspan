class CreatePurchaseItemFeedbacks < ActiveRecord::Migration
  def change
    create_table :purchase_item_feedbacks do |t|
      t.integer :purchase_item_id
      t.integer :item_rating
      t.integer :buy_again_in_next_6_month
      t.integer :recommends_to_friend
      t.text :feedback_improvement
      t.integer :item_feedback_rating_question_id
      t.text :item_feedback_answer_comments
      t.integer :item_feedback_answer

      t.timestamps
    end
  end
end
