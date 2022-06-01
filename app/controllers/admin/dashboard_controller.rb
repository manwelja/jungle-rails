class Admin::DashboardController < ApplicationController
  #implement basic user authentication with credentials specified in .env
  Rails.configuration.authenticate = {
    :username_key => ENV['AUTH_USERNAME_KEY'],
    :password_key => ENV['AUTH_PASSWORD_KEY']
  }
  
  http_basic_authenticate_with name: Rails.configuration.authenticate[:username_key], password: Rails.configuration.authenticate[:password_key]
  protect_from_forgery with: :exception

  def show
    @product_count = Product.count(:id)
    @category_count = Category.count(:id)
  end
end