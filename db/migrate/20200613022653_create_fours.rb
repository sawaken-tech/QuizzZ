class CreateFours < ActiveRecord::Migration[5.0]
  def change
    create_table :fours do |t|
      t.string :name
      t.integer :question_id,   foreign_key: true
      t.text :image
    end
  end
end