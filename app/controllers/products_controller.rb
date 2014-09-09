class ProductsController < ApplicationController
  def index
    @brand = Brand.find(params[:brand_id])
    @car = @brand.cars.find(params[:car_id])
    @product=Product.new

  end

  def update
  end

  def create
    #@brand = Brand.find(params[:brand_id])
    #@car = @brand.cars.find(params[:car_id])

    @car = Car.find(params[:car_id])
    @product = @car.products.new(product_params)

    if @product.save
      redirect_to brand_car_products_path(:car_id =>@car.id)
    end
  end

  def delete
  end

  private

  def product_params
    params.require(:product).permit(:name,:car_id)
  end


end
