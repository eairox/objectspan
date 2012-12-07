require 'spec_helper'

describe "purchase_item_feedbacks/index" do
  before(:each) do
    assign(:purchase_item_feedbacks, [
      stub_model(PurchaseItemFeedback,
        :purchase_item_id => 1,
        :item_rating => 2,
        :buy_again_in_next_6_month => 3,
        :recommends_to_friend => 4,
        :feedback_improvement => "MyText",
        :item_feedback_rating_question_id => 5,
        :item_feedback_answer_comments => "MyText",
        :item_feedback_answer => 6
      ),
      stub_model(PurchaseItemFeedback,
        :purchase_item_id => 1,
        :item_rating => 2,
        :buy_again_in_next_6_month => 3,
        :recommends_to_friend => 4,
        :feedback_improvement => "MyText",
        :item_feedback_rating_question_id => 5,
        :item_feedback_answer_comments => "MyText",
        :item_feedback_answer => 6
      )
    ])
  end

  it "renders a list of purchase_item_feedbacks" do
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
