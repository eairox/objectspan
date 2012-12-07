require 'spec_helper'

describe "purchase_item_feedbacks/edit" do
  before(:each) do
    @purchase_item_feedback = assign(:purchase_item_feedback, stub_model(PurchaseItemFeedback,
      :purchase_item_id => 1,
      :item_rating => 1,
      :buy_again_in_next_6_month => 1,
      :recommends_to_friend => 1,
      :feedback_improvement => "MyText",
      :item_feedback_rating_question_id => 1,
      :item_feedback_answer_comments => "MyText",
      :item_feedback_answer => 1
    ))
  end

  it "renders the edit purchase_item_feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_item_feedbacks_path(@purchase_item_feedback), :method => "post" do
      assert_select "input#purchase_item_feedback_purchase_item_id", :name => "purchase_item_feedback[purchase_item_id]"
      assert_select "input#purchase_item_feedback_item_rating", :name => "purchase_item_feedback[item_rating]"
      assert_select "input#purchase_item_feedback_buy_again_in_next_6_month", :name => "purchase_item_feedback[buy_again_in_next_6_month]"
      assert_select "input#purchase_item_feedback_recommends_to_friend", :name => "purchase_item_feedback[recommends_to_friend]"
      assert_select "textarea#purchase_item_feedback_feedback_improvement", :name => "purchase_item_feedback[feedback_improvement]"
      assert_select "input#purchase_item_feedback_item_feedback_rating_question_id", :name => "purchase_item_feedback[item_feedback_rating_question_id]"
      assert_select "textarea#purchase_item_feedback_item_feedback_answer_comments", :name => "purchase_item_feedback[item_feedback_answer_comments]"
      assert_select "input#purchase_item_feedback_item_feedback_answer", :name => "purchase_item_feedback[item_feedback_answer]"
    end
  end
end
