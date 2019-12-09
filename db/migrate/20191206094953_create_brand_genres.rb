class CreateBrandGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :brand_genres do |t|
      t.integer :brand_id,null:false,foreign_key:true
      t.integer :group_id,null:false,foreign_key:true
    end
  end
end
