require "test_helper"

class ProductTest < ActiveSupport::TestCase
  
  test "name_list" do
    product = Product.new(name: "Sammy Dandy")
    assert_equal ["Sammy", "Dandy"], product.name_list
  end

  test "friendly_created_at" do
    product = Product.new(created_at: "2025-10-31 00:05:14.152507000 +0000")
    assert_equal "Oct 31, 12:05 AM", product.friendly_created_at
  end

  test "is_discounted" do
    product = Product.new(price: 20)
    assert_equal true, product.is_discounted
  end

  test "tax" do
    product = Product.new(price: 1)
    assert_equal 0.09, product.tax
  end

  test "total" do
    product = Product.new(price: 10)
    assert_equal 10.9, product.total
  end

end

 # test "the truth" do
  #   assert true
  # end