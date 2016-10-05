class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = @market.vendors
    # @vendors = Vendor.find_by(market_id: params[:id])
  end

  def new
    @market = Market.new
    @method = :post
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
