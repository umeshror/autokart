class ItemsController < ApplicationController
  before_action :set_id, :only=> [:index, :create, :show]

  def index
    @item = Item.new
  end

  def show
    @item = @type.items.find(params[:id])
  end

  def new
  end

  def create
    @item = @type.items.new(item_params)
    if @item.save
      redirect_to brand_car_product_type_items_path(:type_id => @type.id), :notice => "Succefully created...!!!"
    else
      redirect_to brand_car_product_type_items_path(:type_id => @type.id),:notice => "All fields are manadatory...!!!"

      #format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  def update
  end

  def delete
  end

  private

  def set_id

    @brand = Brand.find(params[:brand_id])
    @car = @brand.cars.find(params[:car_id])
    @product = @car.products.find(params[:product_id])
    @type = @product.types.find(params[:type_id])
  end

  def item_params
    params.require(:item).permit(:name,:image_url,:price,:manufacturer,:description,:type_id)
  end
end
