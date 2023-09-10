require 'rails_helper'

RSpec.describe Market do
  describe "initialize" do
    it "has attributes" do
      market_attributes = {
        id: "123",
        name: "Name",
        street: "Street",
        city: "City",
        county: "County",
        state: "State",
        zip: "01234"
      }
      market = Market.new(market_attributes)

      expect(market.id).to eq(market_attributes[:id])
      expect(market.name).to eq(market_attributes[:name])
      expect(market.street).to eq(market_attributes[:street])
      expect(market.city).to eq(market_attributes[:city])
      expect(market.county).to eq(market_attributes[:county])
      expect(market.state).to eq(market_attributes[:state])
      expect(market.zip).to eq(market_attributes[:zip])
    end
  end
end