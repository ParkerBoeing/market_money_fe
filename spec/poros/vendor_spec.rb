require 'rails_helper'

RSpec.describe Vendor do
  describe "initialize" do
    it "has attributes" do
      vendor_attributes = {
        id: "123",
        name: "Name",
        description: "description",
        contact_name: "name",
        contact_phone: "phone",
        credit_accepted: true
      }
      vendor = Vendor.new(vendor_attributes)

      expect(vendor.id).to eq(vendor_attributes[:id])
      expect(vendor.name).to eq(vendor_attributes[:name])
      expect(vendor.description).to eq(vendor_attributes[:description])
      expect(vendor.contact_name).to eq(vendor_attributes[:contact_name])
      expect(vendor.contact_phone).to eq(vendor_attributes[:contact_phone])
      expect(vendor.credit_accepted).to eq(vendor_attributes[:credit_accepted])
    end
  end
end