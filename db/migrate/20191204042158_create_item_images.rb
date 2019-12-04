class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
    t.text :image
    t.integer :item_id,null:false,foreign_key:true
   end
  end
end
