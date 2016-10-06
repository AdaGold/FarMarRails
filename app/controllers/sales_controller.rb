class SalesController < ApplicationController
  def index
    @product = Product.find(params[:id])

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
  end
end
