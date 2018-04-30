class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new

    binding.pry
    @result = Bestseller.get_bestseller_list
  end
end
