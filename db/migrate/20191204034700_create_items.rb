class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string        :name,             null:false
      t.string        :size
      t.string        :condition,        null:false
      t.string        :shipping_method,  null:false
      t.string        :shipping_days,    null:false
      t.string        :prefecture_id,    null:false
      t.string        :shipping_price,   null:false
      t.integer       :price,            null:false
      t.text          :text,             null:false
      t.references    :category,         null:false, foreign_key:true
      t.integer       :brand_id
      t.integer       :seller_id,        null: false
      t.integer       :buyer_id
      t.integer       :sale_status,      null: false, default: 0
      t.timestamps

      # add_foreign_key :items, :users,    column: :seller   #name: :seller_id
      # add_foreign_key :items, :users,    column: :buyer

    end
  end
end


