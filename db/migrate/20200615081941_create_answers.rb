class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer,             null: false
      t.text :answer_image
      t.string :explain,            null: false
      t.string :genre,              foreign_key: true
      t.references :question,       foreign_key: true
      t.string :four_select1
      t.text :four_image1
      t.string :four_select2
      t.text :four_image2
      t.string :four_select3
      t.text :four_image3
      t.string :sort_select1
      t.text :sort_image1
      t.string :sort_select2
      t.text :sort_image2
      t.string :sort_select3
      t.text :sort_image3
      t.text :description_image
    end
  end
end
