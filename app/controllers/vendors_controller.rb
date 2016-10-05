class VendorsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy

    @vendor = Vendor.find(params[:id])
    # @vendor.destroy
    #
    redirect_to show_markets_url(id: @vendor.market.id, type: "market")
  end
end
