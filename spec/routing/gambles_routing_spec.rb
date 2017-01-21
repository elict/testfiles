require "rails_helper"

RSpec.describe GamblesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gambles").to route_to("gambles#index")
    end

    it "routes to #new" do
      expect(:get => "/gambles/new").to route_to("gambles#new")
    end

    it "routes to #show" do
      expect(:get => "/gambles/1").to route_to("gambles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gambles/1/edit").to route_to("gambles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gambles").to route_to("gambles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gambles/1").to route_to("gambles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gambles/1").to route_to("gambles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gambles/1").to route_to("gambles#destroy", :id => "1")
    end

  end
end
