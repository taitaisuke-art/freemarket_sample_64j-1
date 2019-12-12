class CreateBrandGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :brand_genres do |t|
      t.references      :brand,      null:false, foreign_key:true
      t.references      :genre,      null:false, foreign_key:true
      t.timestamps
    end
  end
end
