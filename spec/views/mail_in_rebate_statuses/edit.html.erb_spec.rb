require 'spec_helper'

describe "mail_in_rebate_statuses/edit" do
  before(:each) do
    @mail_in_rebate_status = assign(:mail_in_rebate_status, stub_model(MailInRebateStatus,
      :name => "MyString"
    ))
  end

  it "renders the edit mail_in_rebate_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mail_in_rebate_statuses_path(@mail_in_rebate_status), :method => "post" do
      assert_select "input#mail_in_rebate_status_name", :name => "mail_in_rebate_status[name]"
    end
  end
end
