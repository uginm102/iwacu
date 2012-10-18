class CreateProverbs < ActiveRecord::Migration
  def change
    create_table :proverbs do |t|
      t.text :body
      t.references :folk_story

      t.timestamps
    end
    add_index :proverbs, :folk_story_id
  end
end
