class MarketService
  def all_markets
    get_url("/api/v0/markets")
  end

  def select_market(id)
    get_url("/api/v0/markets/#{id}")
  end

  def affiliated_vendors(id)
    get_url("/api/v0/markets/#{id}/vendors")
  end

  def select_vendor(id)
    get_url("/api/v0/vendors/#{id}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://localhost:3000')
  end
end