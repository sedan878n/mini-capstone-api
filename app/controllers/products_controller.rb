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
    @product = Product.new(name: params[:name], price: params[:price], quantity: params[:quantity], in_stock: params[:in_stock], description: params[:description],supplier_id: params[:supplier_id])
    
    if @product.save
    render template: "products/show"
    else
    render json: @product.errors
    end
  end
    

  def update
    @product = Product.find(params[:id])

    @product.update(name: params[:name] || @product.name, price: params[:price] || @product.price, quantity: params[:quantity] || @product.quantity, in_stock: params[:in_stock] || @product.in_stock, supplier_id: params[:supplier_id] || @product.supplier_id)

    render template: "products/show"
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    render json: {message: "Product deleted..."}
  end

end  

