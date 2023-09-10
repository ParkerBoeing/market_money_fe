require 'rails_helper'

describe MarketFacade do
  context "class methods" do
    it "returns all markets", :vcr do
      MarketFacade.all_markets.each do |market|
        expect(market).to be_a Market
      end
    end

    it "returns select market", :vcr do
      expect(MarketFacade.select_market("322458")).to be_a Market
    end

    it "returns all vendors affiliated with a market", :vcr do
      MarketFacade.affiliated_vendors("322458").each do |vendor|
        expect(vendor).to be_a Vendor
      end
    end

    it "returns select vendor", :vcr do
      expect(MarketFacade.select_vendor("55823")).to be_a Vendor
    end
  end
end