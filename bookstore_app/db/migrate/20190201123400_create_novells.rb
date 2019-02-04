class CreateNovells < ActiveRecord::Migration[5.2]
  def change
    create_table :novells do |t|
      t.string :title
      t.integer :genre_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.float :price
      t.date :publication
      t.string :format
      t.text :description
      t.integer :pages

      t.timestamps
    end
  end
end
