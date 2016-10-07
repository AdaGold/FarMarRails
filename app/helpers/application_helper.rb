module ApplicationHelper

  def to_dollars(amount)
    dollars = (amount/100.00)
    return "$#{'%.2f' %dollars}"
    # return "$#{dollars.round(2)}"
  end

end
