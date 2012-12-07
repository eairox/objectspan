require 'spec_helper'

describe "purchase_statuses/new" do
  before(:each) do
    assign(:purchase_status, stub_model(PurchaseStatus,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new purchase_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchase_statuses_path, :method => "post" do
      assert_select "input#purchase_status_name", :name => "purchase_status[name]"
    end
  end
end
