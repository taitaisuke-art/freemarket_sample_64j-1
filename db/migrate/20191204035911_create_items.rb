class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string        :name,             null:false
      t.string        :size
      t.string        :condition,        null:false
      t.string        :shipping_method,  null:false
      t.string        :shipping_days,    null:false
      t.string        :shipping_area,    null:false
      t.integer       :shipping_price,   null:false
      t.integer       :price,            null:false
      t.text          :text,             null:false
      t.references    :seller,           null:false, foreign_key:true
      t.references    :buyer,            foreign_key:true
      t.references    :category,         null:false, foreign_key:true
      t.references    :brand,            foreign_key:true
      t.timestamps

      add_foreign_key :items, :users,    column: :seller_id   #name: :seller_id
      add_foreign_key :items, :users,    column: :buyer_id

      # validates :name, :size, :condition, :shipping_method, :shipping_days, :shipping_area, :shipping_price, :price, :text, :category,  presence: ture
    end
  end
end

