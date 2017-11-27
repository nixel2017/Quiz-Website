class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :option
      t.string :optionAAnswer
      t.string :optionBAnswer
      t.string :optionCAnswer
      t.string :optionDAnswer

      t.references :CreateQuiz, foreign_key: true

      t.timestamps
    end
  end
end
