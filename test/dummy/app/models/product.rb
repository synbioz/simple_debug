class Product < ActiveRecord::Base
  def with_vat(rate: 0.15)
    price * (1 + rate)
  end

  def final_price
    with_vat
  end

  simple_debugger
end
