class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer,             null: false
      t.string :explain,            null: false
      t.string :genre,              foreign_key: true, null: false
      t.string :select,             foreign_key: true, null: false
    end
  end
end
