class SalesController < ApplicationController
  def index
    @vendor = Vendor.find(params[:id])
    @sales = @vendor.sales


    if params[:select] == nil || params[:sales_showing] == "all"
      @sales = @vendor.sales
    elsif params[:select][:month].is_a?(String)
      year = params[:select][:month][0..3].to_i
      month = params[:select][:month][5..6].to_i

      @sales = @vendor.sales_by_month(month, year)
    end

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

  def button
    # @task = Task.find(params[:id])
    # @task.toggle!(:completed)
    #
    # if @task.completed
    #   @task.completed_at = Time.now
    # else
    #   @task.completed_at = nil
    # end
    #
    # @task.save

    # redirect_to(:back(sales_showing: params[:sales_showing]))

  end
end
