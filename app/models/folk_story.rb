class FolkStory < ActiveRecord::Base
  attr_accessible :body, :title
  
  has_many :proverbs
end
