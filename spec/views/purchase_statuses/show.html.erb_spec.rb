require 'spec_helper'

describe "purchase_statuses/show" do
  before(:each) do
    @purchase_status = assign(:purchase_status, stub_model(PurchaseStatus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
