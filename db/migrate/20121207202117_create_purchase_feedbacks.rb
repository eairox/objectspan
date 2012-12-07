class CreatePurchaseFeedbacks < ActiveRecord::Migration
  def change
    create_table :purchase_feedbacks do |t|
      t.integer :purchase_id
      t.integer :shopping_experience_rating
      t.integer :shop_again_in_next_6_month
      t.integer :recommends_to_friend
      t.text :feedback_improvement
      t.integer :company_feedback_rating_question_id
      t.text :company_feedback_answer_comments
      t.integer :company_feedback_answer

      t.timestamps
    end
  end
end
