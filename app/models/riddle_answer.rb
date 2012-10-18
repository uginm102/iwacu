class RiddleAnswer < ActiveRecord::Base
  belongs_to :riddle_question
  attr_accessible :riddle_answers
end
