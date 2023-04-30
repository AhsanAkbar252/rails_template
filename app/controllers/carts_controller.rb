class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    if current_user.nil?
      redirect_to new_user_session_path, alert: 'You must be logged in to view your cart'
    elsif current_user.cart.nil?
      redirect_to root_path, alert: 'Your cart is empty'
    else
      @cart = current_user.cart
    end
  end

  def add_item
    product = Product.find(params[:product_id])
    @cart = current_user.cart || current_user.create_cart
    @line_item = @cart.add_product(product)

    if @line_item.save
      redirect_to cart_path, notice: 'Item was successfully added to your cart.'
    else
      redirect_to cart_path, alert: 'Error adding item from cart.'
    end
  end

  def remove_item
    product = Product.find(params[:product_id])
    @cart = current_user.cart
    @line_item = @cart.remove_product(product)

    if @line_item.save
      redirect_to cart_path, notice: 'Item was successfully removed from your cart.'
    else
      redirect_to cart_path
    end
  end

end