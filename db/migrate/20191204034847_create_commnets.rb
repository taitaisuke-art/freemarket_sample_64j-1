class CreateCommnets < ActiveRecord::Migration[5.0]
  def change
    create_table :commnets do |t|
      t.text         :text,      null:false
      t.references   :item,      null:false, foreign_key:true
      t.references   :user,      null:false, foreign_key:true
    end
  end
end
