require 'spec_helper'

describe "email_accounts/index" do
  before(:each) do
    assign(:email_accounts, [
      stub_model(EmailAccount,
        :server => "Server",
        :port => 1,
        :ssl => false,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(EmailAccount,
        :server => "Server",
        :port => 1,
        :ssl => false,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of email_accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Server".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
