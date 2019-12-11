class CreateResidences < ActiveRecord::Migration[5.0]
  def change
    create_table :residences do |t|
      t.integer       :prefecture_id
      t.string        :city

      t.timestamps
    end
  end
end
