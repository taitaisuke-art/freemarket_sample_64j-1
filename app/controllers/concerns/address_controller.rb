class AddressController < ApplicationController

  def index
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to new_card_path
    else
      redirect_to new_user_address_path
    end
  end


  private
  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :post_cord, :prefecture_id, :city, :address, :building, :telephone).merge(user_id:current_user.id)
  end
end