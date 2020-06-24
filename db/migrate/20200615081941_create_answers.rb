class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer,             null: false
      t.string :explain,            null: false
      t.string :genre,              foreign_key: true
      t.references :question,       foreign_key: true
    end
  end
end
