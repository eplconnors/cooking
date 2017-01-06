class OrderItemsController < ApplicationController
  def create
      puts "=====create==="
      puts order_item_params.inspect
      puts "=====current_order==="
      puts current_order.inspect
      @order = current_order
      puts "*******************"
      @order_item = @order.order_items.new(order_item_params)
      puts "=====@order======="
      puts @order.inspect
      puts "=====@order======="
      puts @order.inspect
      @order.save!
      puts "======order_items====="
      puts @order.order_items
      session[:order_id] = @order.id
      puts "=====session_id========"
      puts session[:order_id]
      session[:order_id]
    end

    def update
      @order = current_order
      @order_item = @order.order_items.find(params[:id])
      @order_item.update_attributes(order_item_params)
      @order_items = @order.order_items
    end

    def destroy
      @order = current_order
      @order_item = @order.order_items.find(params[:id])
      @order_item.destroy
      @order_items = @order.order_items
    end
  private
    def order_item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end
end
