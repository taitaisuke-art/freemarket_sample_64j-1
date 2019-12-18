class ItemsController < ApplicationController

  def index
    @ladies = Item.where(category_id: "1").order(created_at: "DESC").limit(10)
    @mens = Item.where(category_id: "139").order(created_at: "DESC").limit(10)
    @appliance = Item.where(category_id: "783").order(created_at: "DESC").limit(10)
    @hobby = Item.where(category_id: "576").order(created_at: "DESC").limit(10)
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      format.html
      format.json {render json: @item}
    end
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
    @item = Item.find(params[:id])
  end


  private
  def item_params
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status, item_images_attributes: [:image]).merge(seller_id: current_user.id)
  end

end