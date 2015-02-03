require "spec_helper"

describe MCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/m_cards").should route_to("m_cards#index")
    end

    it "routes to #new" do
      get("/m_cards/new").should route_to("m_cards#new")
    end

    it "routes to #show" do
      get("/m_cards/1").should route_to("m_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/m_cards/1/edit").should route_to("m_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/m_cards").should route_to("m_cards#create")
    end

    it "routes to #update" do
      put("/m_cards/1").should route_to("m_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/m_cards/1").should route_to("m_cards#destroy", :id => "1")
    end

  end
end
