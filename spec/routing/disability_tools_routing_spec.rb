require "rails_helper"

RSpec.describe DisabilityToolsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/disability_tools").to route_to("disability_tools#index")
    end

    it "routes to #new" do
      expect(:get => "/disability_tools/new").to route_to("disability_tools#new")
    end

    it "routes to #show" do
      expect(:get => "/disability_tools/1").to route_to("disability_tools#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/disability_tools/1/edit").to route_to("disability_tools#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/disability_tools").to route_to("disability_tools#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/disability_tools/1").to route_to("disability_tools#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/disability_tools/1").to route_to("disability_tools#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/disability_tools/1").to route_to("disability_tools#destroy", :id => "1")
    end

  end
end
