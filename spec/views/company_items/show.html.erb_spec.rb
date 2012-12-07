require 'spec_helper'

describe "company_items/show" do
  before(:each) do
    @company_item = assign(:company_item, stub_model(CompanyItem,
      :company_id => 1,
      :item_id => 2,
      :sku => "Sku",
      :price => 1.5,
      :url => "Url",
      :store_return_category_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Sku/)
    rendered.should match(/1.5/)
    rendered.should match(/Url/)
    rendered.should match(/3/)
  end
end
