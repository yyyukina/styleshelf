class CreateClosets < ActiveRecord::Migration[7.0]
  def change
    create_table :closets do |t|
      t.integer :category_id
      t.integer :size_id
      t.integer :color_id
      t.integer :season_id
      t.string :brand
      t.text :memo
      t.references :user,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
