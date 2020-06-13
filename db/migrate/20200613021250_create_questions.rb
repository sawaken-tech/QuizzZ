class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title,              null: false
      t.text :sentence,             null: false
      t.string :answer,             null: false
      t.string :explain,            null: false
      t.string :question_format,    null: false
      t.string :select,             foreign_key: true, null: false
      t.string :genre,              foreign_key: true, null: false
      t.integer :rate_id,           foreign_key: true
    end
    add_index :questions, :title
  end
end