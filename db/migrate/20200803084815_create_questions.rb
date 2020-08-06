class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :question_level
      t.timestamps
    end
  end
end
