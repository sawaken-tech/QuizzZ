class CreateFours < ActiveRecord::Migration[5.0]
  def change
    create_table :fours do |t|
      t.string :name
      t.references :answer
      t.text :image
    end
  end
end
