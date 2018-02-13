require 'rails_helper'

RSpec.describe "Combos", type: :request do
  describe "GET /combos" do
    it "works! (now write some real specs)" do
      get combos_path
      expect(response).to have_http_status(200)
    end
  end
end
