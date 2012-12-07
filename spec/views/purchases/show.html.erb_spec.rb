require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :name => "Name",
      :group_id => 1,
      :store_id => 2,
      :payment_method_id => 3,
      :visibility_id => 4,
      :user_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
