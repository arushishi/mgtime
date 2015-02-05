require "spec_helper"

describe TCorrecteddataController do
  describe "routing" do

    it "routes to #index" do
      get("/t_correcteddata").should route_to("t_correcteddata#index")
    end

    it "routes to #new" do
      get("/t_correcteddata/new").should route_to("t_correcteddata#new")
    end

    it "routes to #show" do
      get("/t_correcteddata/1").should route_to("t_correcteddata#show", :id => "1")
    end

    it "routes to #edit" do
      get("/t_correcteddata/1/edit").should route_to("t_correcteddata#edit", :id => "1")
    end

    it "routes to #create" do
      post("/t_correcteddata").should route_to("t_correcteddata#create")
    end

    it "routes to #update" do
      put("/t_correcteddata/1").should route_to("t_correcteddata#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/t_correcteddata/1").should route_to("t_correcteddata#destroy", :id => "1")
    end

  end
end
