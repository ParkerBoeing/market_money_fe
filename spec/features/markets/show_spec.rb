require 'rails_helper'

RSpec.describe "Market Show" do
  describe "market show" do
    it "shows each market with relevant information", :vcr do
      visit market_path("322458")
      
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content("Washington, District of Columbia 20009")
      expect(page).to have_content("Affiliated Vendors")
      
      within "#55823" do
        expect(page).to have_content("The Charcuterie Corner")
        click_on "The Charcuterie Corner"
        expect(current_path).to eq(vendor_path("55823"))
      end
    end
  end
end