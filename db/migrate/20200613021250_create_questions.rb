class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title,              null: false
      t.text :sentence,             null: false
      t.string :question_format,    null: false
      t.references :rate
      t.references :comment
    end
    add_index :questions, :title
  end
end