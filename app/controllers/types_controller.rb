class TypesController < ApplicationController
  def index
    @brand = Brand.find(params[:brand_id])
    @car = @brand.cars.find(params[:car_id])
    @product=@car.products.find(params[:product_id])
    @type = Type.new

  end

  def create
    @brand = Brand.find(params[:brand_id])
    @car = @brand.cars.find(params[:car_id])

    @product=@car.products.find(params[:product_id])

    @type = @product.types.new(type_params)

    if @product.save
      redirect_to brand_car_product_types_path(:product_id =>@product.id), :notice => "Successfully Creatted...!!!"
    else
      redirect_to brand_car_product_types_path(:product_id =>@product.id), :notice => "Name should be unique...!!!"
    end


  end

  def update
  end

  def delete
  end
  private

  def type_params

    params.require(:type).permit(:name,:product_id)

  end
end
