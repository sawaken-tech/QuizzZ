class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.references :user
      t.references :question
      t.string :rate
    end
  end
end
