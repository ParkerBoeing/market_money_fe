require 'rails_helper'

describe MarketService do
  describe "instance methods" do
    before :each do
      @service = MarketService.new
    end

    it "returns all_markets", :vcr do
      results = @service.all_markets
      expect(results).to be_a Hash
      expect(results[:data]).to be_an Array
      market_data = results[:data].first

      expect(market_data).to have_key :id
      expect(market_data[:id]).to be_a(String)

      market_attributes = market_data[:attributes]

      expect(market_attributes).to have_key :name
      expect(market_attributes[:name]).to be_a(String)

      expect(market_attributes).to have_key :street
      expect(market_attributes[:street]).to be_a(String)

      expect(market_attributes).to have_key :city
      expect(market_attributes[:city]).to be_a(String)

      expect(market_attributes).to have_key :county
      expect(market_attributes[:county]).to be_a(String)

      expect(market_attributes).to have_key :state
      expect(market_attributes[:state]).to be_a(String)

      expect(market_attributes).to have_key :zip
      expect(market_attributes[:zip]).to be_a(String)
    end

    it "returns select_market", :vcr do
      results = @service.select_market("322458")
      expect(results).to be_a Hash
      expect(results[:data]).to be_a Hash
      market_data = results[:data]

      expect(market_data).to have_key :id
      expect(market_data[:id]).to be_a(String)

      market_attributes = market_data[:attributes]

      expect(market_attributes).to have_key :name
      expect(market_attributes[:name]).to be_a(String)

      expect(market_attributes).to have_key :street
      expect(market_attributes[:street]).to be_a(String)

      expect(market_attributes).to have_key :city
      expect(market_attributes[:city]).to be_a(String)

      expect(market_attributes).to have_key :county
      expect(market_attributes[:county]).to be_a(String)

      expect(market_attributes).to have_key :state
      expect(market_attributes[:state]).to be_a(String)

      expect(market_attributes).to have_key :zip
      expect(market_attributes[:zip]).to be_a(String)
    end

    it "returns affiliated_vendors", :vcr do
      results = @service.affiliated_vendors("322458")
      expect(results).to be_a Hash
      expect(results[:data]).to be_an Array
      vendor_data = results[:data].first

      expect(vendor_data).to have_key :id
      expect(vendor_data[:id]).to be_a(String)

      vendor_attributes = vendor_data[:attributes]

      expect(vendor_attributes).to have_key :name
      expect(vendor_attributes[:name]).to be_a(String)

      expect(vendor_attributes).to have_key :description
      expect(vendor_attributes[:description]).to be_a(String)

      expect(vendor_attributes).to have_key :contact_name
      expect(vendor_attributes[:contact_name]).to be_a(String)

      expect(vendor_attributes).to have_key :contact_phone
      expect(vendor_attributes[:contact_phone]).to be_a(String)

      expect(vendor_attributes).to have_key :credit_accepted
      expect([TrueClass, FalseClass]).to include(vendor_attributes[:credit_accepted].class)
    end

    it "returns select_vendor", :vcr do
      results = @service.select_vendor("55823")
      expect(results).to be_a Hash
      expect(results[:data]).to be_a Hash
      vendor_data = results[:data]

      expect(vendor_data).to have_key :id
      expect(vendor_data[:id]).to be_a(String)

      vendor_attributes = vendor_data[:attributes]

      expect(vendor_attributes).to have_key :name
      expect(vendor_attributes[:name]).to be_a(String)

      expect(vendor_attributes).to have_key :description
      expect(vendor_attributes[:description]).to be_a(String)

      expect(vendor_attributes).to have_key :contact_name
      expect(vendor_attributes[:contact_name]).to be_a(String)

      expect(vendor_attributes).to have_key :contact_phone
      expect(vendor_attributes[:contact_phone]).to be_a(String)

      expect(vendor_attributes).to have_key :credit_accepted
      expect([TrueClass, FalseClass]).to include(vendor_attributes[:credit_accepted].class)
    end
  end
end