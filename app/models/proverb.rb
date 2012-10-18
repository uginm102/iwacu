class Proverb < ActiveRecord::Base
  belongs_to :folk_story
  attr_accessible :body
end
