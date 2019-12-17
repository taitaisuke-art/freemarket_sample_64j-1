require 'rails_helper'

describe Item do
  describe "#create" do

    # nameが空では登録できないこと
    it "is invalid without a name" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    # conditionが空では登録できないこと
    it "is invalid without a condition" do
      item = build(:item, condition: "")
      item.valid?
      expect(item.errors[:condition]).to include("can't be blank")
    end

    # shipping_methodが空では登録できないこと
    it "is invalid without a shipping_method" do
      item = build(:item, shipping_method: "")
      item.valid?
      expect(item.errors[:shipping_method]).to include("can't be blank")
    end

    # shipping_daysが空では登録できないこと
    it "is invalid without a shipping_days" do
      item = build(:item, shipping_days: "")
      item.valid?
      expect(item.errors[:shipping_days]).to include("can't be blank")
    end

    # prefecture_idが空では登録できないこと
    it "is invalid without a prefecture_id" do
      item = build(:item, prefecture_id: "")
      item.valid?
      expect(item.errors[:prefecture_id]).to include("can't be blank")
    end

    # shipping_priceが空では登録できないこと
    it "is invalid without a shipping_price" do
      item = build(:item, shipping_price: "")
      item.valid?
      expect(item.errors[:shipping_price]).to include("can't be blank")
    end

    # priceが空では登録できないこと
    it "is invalid without a price" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    # textが空では登録できないこと
    it "is invalid without a text" do
      item = build(:item, text: "")
      item.valid?
      expect(item.errors[:text]).to include("can't be blank")
    end

    # category_idが空では登録できないこと
    it "is invalid without a category_id" do
      item = build(:item, category_id: "")
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    # seller_idが空では登録できないこと
    it "is invalid without a seller_id" do
      item = build(:item, seller_id: "")
      item.valid?
      expect(item.errors[:seller_id]).to include("can't be blank")
    end

    # sale_statusが空では登録できないこと
    it "is invalid without a sale_status" do
      item = build(:item, sale_status: "")
      item.valid?
      expect(item.errors[:sale_status]).to include("can't be blank")
    end

  end
end