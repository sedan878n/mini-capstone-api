require "test_helper"

class ProductTest < ActiveSupport::TestCase

  test "name_list" do
    product = Product.new(name: "Sammy Dandy")
    assert_equal ("Sammy" "Dandy"), product.name_list
  end

end

 # test "the truth" do
  #   assert true
  # end