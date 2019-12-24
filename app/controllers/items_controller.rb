class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :destroy, :update]

  def index
    @ladies = Item.where(category_id: "1").order(created_at: "DESC").limit(10)
    @mens = Item.where(category_id: "2").order(created_at: "DESC").limit(10)
  end

  def new
    @item = Item.new
    @item.item_images.build
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      format.html
      format.json {render json: @item}
    end
    if @item.save
      # 複数画像が入ったハッシュ形式からひとつずつ取り出して保存
      params[:item_images][:image].each do |image|
        @item.item_images.create(image: image)
      end
      redirect_to item_path(@item)
    else
      redirect_to new_item_path
      alert('出品に失敗しました！');
    end
  end

  def show
    @comments = @item.comments
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @item.update(item_params2)
      if  params[:item_images].present?
        params[:item_images][:image].each do |image|
          @item.item_images.create(image: image)
      end
    end
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @item.seller_id == current_user.id && @item.destroy
  end

  
  def category_children  
    # Ajax通信で送られてきたデータをparamsで受け取り､childrenで子を取得
    @category_children = Category.find(params[:productcategory]).children 
  end

  def category_grandchildren
    # Ajax通信で送られてきたデータをparamsで受け取り､childrenで孫を取得｡（実際には子カテゴリーの子になる｡childrenは子を取得するメソッド)
    @category_grandchildren = Category.find(params[:productcategory]).children
  end



  private
  def item_params
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status, item_images_attributes: [:image]).merge(seller_id: current_user.id)
  end

  # 商品編集用
  def item_params2
    params.require(:item).permit(:name, :size, :condition, :shipping_method, :shipping_days, :prefecture_id, :shipping_price, :price, :text, :category_id, :brand_id, :seller_id, :buyer_id, :sale_status).merge(seller_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end