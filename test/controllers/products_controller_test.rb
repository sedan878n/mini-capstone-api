require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.count
  end  

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "quantity", "in_stock"], data.keys
  end  

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: {name: "TEST1", price: "2", quantity: "3", in_stock: "4"}
      assert_response 200
    end
  end

  test "update" do
    product = Product.first
    put "/products/#{Product.first.id}.json", params: {name:"SlimShady"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "SlimShady", data["name"]
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json"
      assert_response 200
    end
  end

end


  # test "the truth" do
  #   assert true
  # end