require 'spec_helper'

describe "purchase_feedbacks/new" do
  before(:each) do
    assign(:purchase_feedback, stub_model(PurchaseFeedback,
      :purchase_id => 1,
      :shopping_experience_rating => 1,
      :shop_again_in_next_6_month => 1,
      :recommends_to_friend => 1,
      :feedback_improvement => "MyText",
      :company_feedback_rating_question_id => 1,
      :company_feedback_answer_comments => "MyText",
      :company_feedback_answer => 1
    ).as_new_record)
  end

  it "renders new purchase_feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_feedbacks_path, :method => "post" do
      assert_select "input#purchase_feedback_purchase_id", :name => "purchase_feedback[purchase_id]"
      assert_select "input#purchase_feedback_shopping_experience_rating", :name => "purchase_feedback[shopping_experience_rating]"
      assert_select "input#purchase_feedback_shop_again_in_next_6_month", :name => "purchase_feedback[shop_again_in_next_6_month]"
      assert_select "input#purchase_feedback_recommends_to_friend", :name => "purchase_feedback[recommends_to_friend]"
      assert_select "textarea#purchase_feedback_feedback_improvement", :name => "purchase_feedback[feedback_improvement]"
      assert_select "input#purchase_feedback_company_feedback_rating_question_id", :name => "purchase_feedback[company_feedback_rating_question_id]"
      assert_select "textarea#purchase_feedback_company_feedback_answer_comments", :name => "purchase_feedback[company_feedback_answer_comments]"
      assert_select "input#purchase_feedback_company_feedback_answer", :name => "purchase_feedback[company_feedback_answer]"
    end
  end
end
