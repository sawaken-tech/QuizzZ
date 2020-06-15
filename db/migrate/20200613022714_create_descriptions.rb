class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.integer :answer_id,   foreign_key: true
      t.text :image
    end
  end
end