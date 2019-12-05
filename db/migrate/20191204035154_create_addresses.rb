class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :post_cord, null: false
      t.string  :prefectures, null: false
      t.string  :city, null: false
      t.string  :address, null: false
      t.text    :building
      t.integer :user_id, null: false, foreign_key:true

      t.timestamps
    end
  end
end
