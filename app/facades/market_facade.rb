class MarketFacade
  def self.all_markets
    service = MarketService.new
    raw_markets = service.all_markets[:data]
    raw_markets.map do |raw_market|
      Market.new(name: raw_market[:attributes][:name], 
                street: raw_market[:attributes][:street], 
                city: raw_market[:attributes][:city], 
                county: raw_market[:attributes][:county], 
                state: raw_market[:attributes][:state], 
                zip: raw_market[:attributes][:zip], 
                id: raw_market[:id])
    end
  end

  def self.select_market(id)
    service = MarketService.new
    raw_market = service.select_market(id)[:data]
    Market.new(name: raw_market[:attributes][:name], 
              street: raw_market[:attributes][:street], 
              city: raw_market[:attributes][:city], 
              county: raw_market[:attributes][:county], 
              state: raw_market[:attributes][:state], 
              zip: raw_market[:attributes][:zip], 
              id: raw_market[:id])
  end

  def self.affiliated_vendors(id)
    service = MarketService.new
    raw_vendors = service.affiliated_vendors(id)[:data]
    raw_vendors.map do |raw_vendor|
      Vendor.new(name: raw_vendor[:attributes][:name], 
                description: raw_vendor[:attributes][:description], 
                contact_name: raw_vendor[:attributes][:contact_name], 
                contact_phone: raw_vendor[:attributes][:contact_phone], 
                credit_accepted: raw_vendor[:attributes][:credit_accepted], 
                id: raw_vendor[:id])
    end
  end

  def self.select_vendor(id)
    service = MarketService.new
    raw_vendor = service.select_vendor(id)[:data]
    Vendor.new(name: raw_vendor[:attributes][:name], 
              description: raw_vendor[:attributes][:description], 
              contact_name: raw_vendor[:attributes][:contact_name], 
              contact_phone: raw_vendor[:attributes][:contact_phone], 
              credit_accepted: raw_vendor[:attributes][:credit_accepted], 
              id: raw_vendor[:id])
  end
end