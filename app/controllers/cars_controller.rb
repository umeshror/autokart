class CarsController < ApplicationController


  def delete
  end


  def create
    @brand = Brand.find(params[:brand_id])
    @cars = @brand.cars.new(car_params)

    if @cars.save
      redirect_to brand_path(@brand),:notice=> "Success"
    else
      redirect_to brand_car_path,:notice=> "failure"

    end

  end

  def update

  end
  private

  def car_params
    params.require(:car).permit(:name,:brand_id)
  end
end
