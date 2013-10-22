require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  def test_calculate_vat_return_correct_amount
    assert_equal 17.25, products(:product_1).with_vat
  end
end
