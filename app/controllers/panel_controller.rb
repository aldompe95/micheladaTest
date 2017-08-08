class PanelController < ApplicationController
  
  def index
    @brands = Brand.all
    @products = Product.all
  end
  
end
