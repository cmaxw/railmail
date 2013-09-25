require "spec_helper"

describe EmailAccountsController do
  describe "routing" do

    it "routes to #index" do
      get("/email_accounts").should route_to("email_accounts#index")
    end

    it "routes to #new" do
      get("/email_accounts/new").should route_to("email_accounts#new")
    end

    it "routes to #show" do
      get("/email_accounts/1").should route_to("email_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/email_accounts/1/edit").should route_to("email_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/email_accounts").should route_to("email_accounts#create")
    end

    it "routes to #update" do
      put("/email_accounts/1").should route_to("email_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/email_accounts/1").should route_to("email_accounts#destroy", :id => "1")
    end

  end
end
