class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.string :size
      t.string :condition, null:false
      t.string :shipping_method, null:false
      t.string :shipping_days, null:false
      t.string :prefecture_id, null:false
      t.integer :shipping_price, null:false
      t.integer :price, null:false
      t.text    :text, null:false
      t.integer :seller_id, null:false, foreign_key:true
      t.integer :buyer_id, foreign_key:true
      t.integer :category_id, null:false, foreign_key:true
      t.integer :brand_id, foreign_key:true
      t.timestamps
    end
  end
end
