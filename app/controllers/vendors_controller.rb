class VendorsController < ApplicationController
  
  def show
    @vendor = MarketFacade.select_vendor(params[:id])
  end
end