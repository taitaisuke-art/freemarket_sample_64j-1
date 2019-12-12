class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text          :text,       null:false
      t.references    :item,       null:false, foreign_key:true
      t.integer       :buyer_id
      t.integer       :seller_id
      t.timestamps

      # add_foreign_key :items, :users,    column: :seller   #name: :seller_id
      # add_foreign_key :items, :users,    column: :buyer
    end
  end
end
