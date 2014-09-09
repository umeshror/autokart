class PagesController < ApplicationController
  def Home
    @brands  = Brand.all
    @brand = Brand.find( 1)
    @cars = @brand.cars.all
    @car = Car.find( 1)
    @products = @car.products.all
  end

  def About_Us
  end

  def Contact_Us
  end

  def Blog
  end

  def FAQs
  end
end
