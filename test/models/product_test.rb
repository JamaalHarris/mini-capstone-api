require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "is_discounted?" do
    product = Product.new(price: 11)
    assert_equal false, product.is_discounted?
  end
end
