class CreateRiddleQuestions < ActiveRecord::Migration
  def change
    create_table :riddle_questions do |t|
      t.text :question

      t.timestamps
    end
  end
end
