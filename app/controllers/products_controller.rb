class ProductsController < ApplicationController
  def show
     @product = Product.find(params["id"])

    render template: "products/show"
  end

  def index
    @products = Product.all

    render template: "products/index"
  end

  def create
    @product = Product.create(name: params[:name], price: params[:price], quantity: params[:quantity], in_stock: params[:in_stock])
    
    render template: "products/show"
  end
end
