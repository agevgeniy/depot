class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @count = count_increment
  end
  def count_increment
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
