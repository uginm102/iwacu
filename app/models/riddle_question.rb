class RiddleQuestion < ActiveRecord::Base
  attr_accessible :question
  
   has_many :proverbs
end
