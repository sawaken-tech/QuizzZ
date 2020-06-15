class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.references :answer
      t.text :image
    end
  end
end