require 'spec_helper'

describe "purchase_feedbacks/index" do
  before(:each) do
    assign(:purchase_feedbacks, [
      stub_model(PurchaseFeedback,
        :purchase_id => 1,
        :shopping_experience_rating => 2,
        :shop_again_in_next_6_month => 3,
        :recommends_to_friend => 4,
        :feedback_improvement => "MyText",
        :company_feedback_rating_question_id => 5,
        :company_feedback_answer_comments => "MyText",
        :company_feedback_answer => 6
      ),
      stub_model(PurchaseFeedback,
        :purchase_id => 1,
        :shopping_experience_rating => 2,
        :shop_again_in_next_6_month => 3,
        :recommends_to_friend => 4,
        :feedback_improvement => "MyText",
        :company_feedback_rating_question_id => 5,
        :company_feedback_answer_comments => "MyText",
        :company_feedback_answer => 6
      )
    ])
  end

  it "renders a list of purchase_feedbacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
