class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit]

  def index
    @ladies = Item.where(category_id: "2")
    @mens = Item.where(category_id: "139")
    @appliance = Item.where(category_id: "783")
    @hobby = Item.where(category_id: "576")
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      params[:item_images][:image].each do |image|
        @item.item_images.create(image: image)
      end
      redirect_to root_path
    else
      redirect_to users_path
    end
  end

  def show
  end

  def edit
  end

  def destroy
    item = Item.find(params[:id])
    if item.seller_id == current_user.id
      item.destroy
      redirect_to root_path
    end
  end


  private
  def item_params
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status, item_images_attributes: [:image]).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end