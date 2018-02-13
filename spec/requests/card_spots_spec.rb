require 'rails_helper'

RSpec.describe "CardSpots", type: :request do
  describe "GET /card_spots" do
    it "works! (now write some real specs)" do
      get card_spots_path
      expect(response).to have_http_status(200)
    end
  end
end
