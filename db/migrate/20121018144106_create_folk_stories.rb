class CreateFolkStories < ActiveRecord::Migration
  def change
    create_table :folk_stories do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
