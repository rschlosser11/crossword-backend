class CreateCrosswords < ActiveRecord::Migration[6.0]
  def change
    create_table :crosswords do |t|
      t.string :across_ans, array: true
      t.string :down_ans, array: true
      t.string :author
      t.string :across_clues, array: true
      t.string :down_clues, array: true
      t.string :copyright
      t.string :date
      t.string :editor
      t.string :grid, array: true;
      t.integer :gridnums, array: true;
      t.string :publisher
      t.integer :cols
      t.integer :rows
      t.string :title

      t.timestamps
    end
    add_index :crosswords, :across_ans, using: :gin
    add_index :crosswords, :down_ans, using: :gin
    add_index :crosswords, :across_clues, using: :gin
    add_index :crosswords, :down_clues, using: :gin
    add_index :crosswords, :grid, using: :gin
    add_index :crosswords, :gridnums, using: :gin
  end
end
