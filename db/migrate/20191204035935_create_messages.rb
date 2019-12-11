class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text          :text,       null:false
      t.references    :item,       null:false, foreign_key:true
      t.references    :buyer,      null:false, foreign_key:true
      t.references    :seller,     null:false, foreign_key:true
    end
  end
end
