require "rails_helper"

RSpec.describe CombosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/combos").to route_to("combos#index")
    end

    it "routes to #new" do
      expect(:get => "/combos/new").to route_to("combos#new")
    end

    it "routes to #show" do
      expect(:get => "/combos/1").to route_to("combos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/combos/1/edit").to route_to("combos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/combos").to route_to("combos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/combos/1").to route_to("combos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/combos/1").to route_to("combos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/combos/1").to route_to("combos#destroy", :id => "1")
    end

  end
end
