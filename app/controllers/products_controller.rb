class ProductsController < ApplicationController
  #uncomment the following line to force login
  #before_filter :authorize

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
