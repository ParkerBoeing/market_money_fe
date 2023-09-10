require 'rails_helper'

RSpec.describe "Vendor Show" do
  describe "vendor show" do
    it "shows a vendors information", :vcr do
      visit vendor_path("55823")
      expect(page).to have_content("The Charcuterie Corner")
      expect(page).to have_content("Name: Claudie Langworth III")
      expect(page).to have_content("Phone: 1-147-179-9747")
      expect(page).to have_content("Credit Accepted? false")
      expect(page).to have_content("Description: Vendor selling a variety of artisanal cured meats and sausages.")
    end
  end
end