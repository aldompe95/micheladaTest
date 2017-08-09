class PanelController < ApplicationController
  
  def index
    @brands = Brand.all
    @products = Product.all
    @allTotalPrice = 0
    @products.each do |product|
      @allTotalPrice += product.price
    end
  end
  
end
