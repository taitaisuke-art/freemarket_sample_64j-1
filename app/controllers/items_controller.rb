class ItemsController < ApplicationController

  def index
    @items = Item.limit(5)
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    # binding.pry
    # @item.save!
    if @item.save
      redirect_to root_path
    else
      # binding.pry
      redirect_to users_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end


  private
  def item_params
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status, item_images_attributes: {image: []}).merge(seller_id: current_user.id)
  end

end