class CreateCreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :create_quizzes do |t|
      t.string :quizname
      t.string :topic
      t.text :question
      t.string :option
      t.string :optionAAnswer
      t.string :optionBAnswer
      t.string :optionCAnswer
      t.string :optionDAnswer

      t.timestamps
    end
  end
end
