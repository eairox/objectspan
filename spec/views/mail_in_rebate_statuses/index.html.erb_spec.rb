require 'spec_helper'

describe "mail_in_rebate_statuses/index" do
  before(:each) do
    assign(:mail_in_rebate_statuses, [
      stub_model(MailInRebateStatus,
        :name => "Name"
      ),
      stub_model(MailInRebateStatus,
        :name => "Name"
      )
    ])
  end

  it "renders a list of mail_in_rebate_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
