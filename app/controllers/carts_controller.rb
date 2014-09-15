class CartsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

  def show
    @cart= Cart.find(params[:id])
  end

  private

  def invalid_cart

    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, notice: 'Invalid cart'

  end

  #def destroy
  #  @cart = Cart.find(params[:id])
  #  if (@cart.id == session[:cart_id])
  #    @cart.destroy
  #    session[:cart_id] = nil
  #  end
  #  redirect_to carts_path
  #end

end
