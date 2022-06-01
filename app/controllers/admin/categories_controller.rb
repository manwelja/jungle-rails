class Admin::CategoriesController < ApplicationController
    #implement basic user authentication with credentials specified in .env
    Rails.configuration.authenticate = {
      :username_key => ENV['AUTH_USERNAME_KEY'],
      :password_key => ENV['AUTH_PASSWORD_KEY']
    }
    
    http_basic_authenticate_with name: Rails.configuration.authenticate[:username_key], password: Rails.configuration.authenticate[:password_key]
    protect_from_forgery with: :exception
  
    def index
      @products = Product.order(id: :desc).all
    end
  
    def new
      @product = Product.new
    end
  
    def create
      @product = Product.new(product_params)
  
      if @product.save
        redirect_to [:admin, :products], notice: 'Product created!'
      else
        render :new
      end
    end
  
    private
  
    def product_params
      params.require(:product).permit(
        :name,
        :description,
        :category_id,
        :quantity,
        :image,
        :price
      )
    end
  
end
