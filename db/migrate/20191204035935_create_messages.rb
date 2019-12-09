class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :text,null:false
      t.integer :item_id,null:false,foreign_key:true
      t.integer :buyer_id,null:false,foreign_key:true
      t.integer :seller_id,null:false,foreign_key:true
    end
  end
end
