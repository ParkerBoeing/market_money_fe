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
end