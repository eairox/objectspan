require 'spec_helper'

describe "purchase_item_feedbacks/show" do
  before(:each) do
    @purchase_item_feedback = assign(:purchase_item_feedback, stub_model(PurchaseItemFeedback,
      :purchase_item_id => 1,
      :item_rating => 2,
      :buy_again_in_next_6_month => 3,
      :recommends_to_friend => 4,
      :feedback_improvement => "MyText",
      :item_feedback_rating_question_id => 5,
      :item_feedback_answer_comments => "MyText",
      :item_feedback_answer => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/5/)
    rendered.should match(/MyText/)
    rendered.should match(/6/)
  end
end
