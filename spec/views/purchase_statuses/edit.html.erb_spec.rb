require 'spec_helper'

describe "purchase_statuses/edit" do
  before(:each) do
    @purchase_status = assign(:purchase_status, stub_model(PurchaseStatus,
      :name => "MyString"
    ))
  end

  it "renders the edit purchase_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_statuses_path(@purchase_status), :method => "post" do
      assert_select "input#purchase_status_name", :name => "purchase_status[name]"
    end
  end
end
