require "rails_helper"

RSpec.describe CardSpotsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/card_spots").to route_to("card_spots#index")
    end

    it "routes to #new" do
      expect(:get => "/card_spots/new").to route_to("card_spots#new")
    end

    it "routes to #show" do
      expect(:get => "/card_spots/1").to route_to("card_spots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/card_spots/1/edit").to route_to("card_spots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/card_spots").to route_to("card_spots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/card_spots/1").to route_to("card_spots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/card_spots/1").to route_to("card_spots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/card_spots/1").to route_to("card_spots#destroy", :id => "1")
    end

  end
end
