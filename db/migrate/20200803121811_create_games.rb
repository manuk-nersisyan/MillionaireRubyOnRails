class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :answer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :game
      t.integer :question_number
      t.integer :point
      t.timestamps
    end
  end
end
