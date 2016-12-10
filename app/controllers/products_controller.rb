class ProductsController < ApplicationController
  def index
   # @products = Product.all
    #render json: @products
    render text: "No. Puto Noe"
  end
end
