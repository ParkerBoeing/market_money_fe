class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.all_markets
  end
  
  def show
    @market = MarketFacade.select_market(params[:id])
    @affiliated_vendors = MarketFacade.affiliated_vendors(params[:id])
  end
end