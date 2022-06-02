class Admin::CategoriesController < ApplicationController
    #implement basic user authentication with credentials specified in .env
    Rails.configuration.authenticate = {
      :username_key => ENV['AUTH_USERNAME_KEY'],
      :password_key => ENV['AUTH_PASSWORD_KEY']
    }
    
    http_basic_authenticate_with name: Rails.configuration.authenticate[:username_key], password: Rails.configuration.authenticate[:password_key]
    protect_from_forgery with: :exception
  
    def index
      @categories = Category.order(id: :asc).all
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = Category.new(category_params)
  
      if @category.save
        redirect_to [:admin, :categories], notice: 'Category created!'
      else
        render :new
      end
    end
  
    private
  
    def category_params
      params.require(:category).permit(
        :name
      )
    end
  
end
