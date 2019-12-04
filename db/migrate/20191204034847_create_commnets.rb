class CreateCommnets < ActiveRecord::Migration[5.0]
  def change
    create_table :commnets do |t|
      t.text :comment,null:false
      t.integer :item_id,null:false,foreign_key:true
      t.integer :user_id,null:false,foreign_key:true
    end
  end
end
