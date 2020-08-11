class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.float :weight
      t.float :weight_capacity

      t.timestamps
    end
  end
end
