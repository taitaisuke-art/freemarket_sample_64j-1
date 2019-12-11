class AddressController < ApplicationController

  def index
  end

  def new
    @address = Address.new
  end

  def create
    Address.new(address_params)
    @address.save
    redirect_to step4_signup_index
  end


  private
  def address_params
    params.require(:address).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :post_cord, :prefectures, :city, :address, :building, :telephone).merge(user_id:current_user.id)
  end
end