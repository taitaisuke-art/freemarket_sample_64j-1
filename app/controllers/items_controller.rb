class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # @item.save!
    if @item.save
      redirect_to root_path
    else
      binding.pry
      redirect_to users_path
    end
  end


  private
  def item_params
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status).merge(seller_id: current_user.id)
  end

end