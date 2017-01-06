class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    puts "===order_item===="
    puts @order_item.inspect
    puts "===current_order===="
    puts current_order.inspect
  end
end
