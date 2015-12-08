class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :content
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :contents, [:book_id, :created_at]
  end
end
