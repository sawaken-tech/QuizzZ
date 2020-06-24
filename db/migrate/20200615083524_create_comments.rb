class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id,   foreign_key: true
      t.integer :question_id,   foreign_key: true
      t.text :comment
    end
  end
end
