require 'spec_helper'

describe "email_accounts/show" do
  before(:each) do
    @email_account = assign(:email_account, stub_model(EmailAccount,
      :server => "Server",
      :port => 1,
      :ssl => false,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Server/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Username/)
    rendered.should match(/Password/)
  end
end
