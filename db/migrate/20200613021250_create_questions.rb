class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title,              null: false
      t.text :sentence,             null: false
      t.string :question_format,    null: false
      t.integer :rate_id,           foreign_key: true
      t.integer :comment_id,        foreign_key: true
    end
    add_index :questions, :title
  end
end