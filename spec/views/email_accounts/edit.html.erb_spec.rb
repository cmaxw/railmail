require 'spec_helper'

describe "email_accounts/edit" do
  before(:each) do
    @email_account = assign(:email_account, stub_model(EmailAccount,
      :server => "MyString",
      :port => 1,
      :ssl => false,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit email_account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", email_account_path(@email_account), "post" do
      assert_select "input#email_account_server[name=?]", "email_account[server]"
      assert_select "input#email_account_port[name=?]", "email_account[port]"
      assert_select "input#email_account_ssl[name=?]", "email_account[ssl]"
      assert_select "input#email_account_username[name=?]", "email_account[username]"
      assert_select "input#email_account_password[name=?]", "email_account[password]"
    end
  end
end
