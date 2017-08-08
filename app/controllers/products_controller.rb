class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]
  
  def index
    @products =  Product.all
    render json: @products
  end
  
  def show
    @products = Product.find(params[:id])
    render json: @products
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path, :flash => { :success => "Product created successfully" }
    else
      flash[:notice] = @product.errors.to_a
      redirect_to new_product_path
    end
  end
  
  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to root_path, :flash => { :success => "Product updated successfully" }
    else
      flash[:notice] = @product.errors.to_a
      redirect_to new_product_path
    end
  end
  
  def destroy
    if @product.destroy
      redirect_to root_path, :flash => { :danger => "Product deleted successfully" }
    end
  end
  
  private
  
  def product_params
    params.require(:product).permit(:brand_id, :name, :description, :price)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end

end