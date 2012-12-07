require 'spec_helper'

describe "mail_in_rebate_statuses/show" do
  before(:each) do
    @mail_in_rebate_status = assign(:mail_in_rebate_status, stub_model(MailInRebateStatus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
