class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :user_id,   foreign_key: true
      t.integer :question_id,   foreign_key: true
      t.string :rate
      t.timestamps
    end
  end
end
