require 'spec_helper'

describe "purchase_feedbacks/show" do
  before(:each) do
    @purchase_feedback = assign(:purchase_feedback, stub_model(PurchaseFeedback,
      :purchase_id => 1,
      :shopping_experience_rating => 2,
      :shop_again_in_next_6_month => 3,
      :recommends_to_friend => 4,
      :feedback_improvement => "MyText",
      :company_feedback_rating_question_id => 5,
      :company_feedback_answer_comments => "MyText",
      :company_feedback_answer => 6
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
