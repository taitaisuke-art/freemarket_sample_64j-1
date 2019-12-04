class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
     t.string :brand_type,null:false
    end
  end
end
