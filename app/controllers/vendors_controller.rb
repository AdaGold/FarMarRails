class VendorsController < ApplicationController
  def index
    @vendor = Vendor.find(params[:id])
    # @products = Product.find_by(vendor_id: params[:id])

    @products = []
    @vendor.product_ids.each do | product_id |
      @products << Product.find(product_id)
    end

  end

  def show

  end

  def new
    @vendor = Vendor.new

  end

  def create
    @vendor = Vendor.new(name: params[:vendor][:name], no_employees: params[:vendor][:no_employees], market_id: 1)
    # ADDED the ' market_id: 1 ' as a placeholder, need to get the real id

    @vendor.save

    redirect_to show_users_url(type: "market")
  end

  def edit
  end

  def update
  end

  def destroy

    @vendor = Vendor.find(params[:id])
    @vendor.destroy

    redirect_to show_markets_url(id: @vendor.market.id, type: "market")
  end
end
