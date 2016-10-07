class SalesController < ApplicationController
  def index
    @vendor = Vendor.find(params[:id])

    @sales = @vendor.sales

  end

  def show

  end

  def new
    @sale = Sale.new
    @products = Vendor.find(params[:vendor_id]).products
  end

  def create
    @sale = Sale.new(amount: params[:sale][:amount].to_f*100, purchase_time: DateTime.now, vendor_id: params[:vendor_id], product_id: params[:sale][:product_id])

    @sale.save

    redirect_to index_sales_url(id: params[:vendor_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
