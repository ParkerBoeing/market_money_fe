require 'rails_helper'

RSpec.describe "Markets Index" do
  describe "markets index page" do
    it "shows each market with relevant information", :vcr do
      visit markets_path

      within "#322458" do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")
      end

      within "#322474" do
        expect(page).to have_content("2nd Street Farmers' Market")
        expect(page).to have_content("Amherst")
        expect(page).to have_content("Virginia")
      end
    end

    it "has a link to market show page next to each market", :vcr do
      visit markets_path

      within "#322458" do
        click_on "More Info"
        expect(current_path).to eq(market_path("322458"))
      end
    end
  end
end