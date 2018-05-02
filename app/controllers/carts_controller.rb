class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render 'carts/show.js.erb'}
    end
  end
end
