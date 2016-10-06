class Vendor < ActiveRecord::Base
  belongs_to :market
  has_many :products
  has_many :sales

  def total_revenue
    revenue = 0

    sales.each do |sale|
      revenue += sale.amount
    end

    return revenue
  end

end
