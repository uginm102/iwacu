class CreateRiddleAnswers < ActiveRecord::Migration
  def change
    create_table :riddle_answers do |t|
      t.text :answer
      t.references :riddle_question

      t.timestamps
    end
    add_index :riddle_answers, :riddle_question_id
  end
end
