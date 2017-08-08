class BrandsController < ApplicationController
  before_action :set_brand, only: [:edit, :update, :destroy]
  
  def index
    @brands =  Brand.all
    render json: @brands
  end 
  
  def show
    @brandProducts = Brand.find(params[:id]).products
    render json: @brandProducts
  end
  
  def new
    @brand = Brand.new
  end
  
  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to root_path, :flash => { :success => "Brand created successfully" }
    else
      flash[:notice] = @brand.errors.to_a
      redirect_to new_brand_path
    end
  end
  
  def edit
  end
  
  def update
    if @brand.update(brand_params)
      redirect_to root_path, :flash => { :success => "Brand updated successfully" }
    else
      flash[:notice] = @brand.errors.to_a
      redirect_to new_brand_path
    end
  end
  
  def destroy
    Brand.find(params[:id]).products.destroy_all
    if @brand.destroy
      redirect_to root_path, :flash => { :danger => "Brand deleted successfully" }
    end
  end
  
  private
  
  def brand_params
    params.require(:brand).permit(:name)
  end
  
  def set_brand
    @brand = Brand.find(params[:id])
  end
  
  def destroy_products(brand)
    brand.products.delete_all   
  end
  
end
