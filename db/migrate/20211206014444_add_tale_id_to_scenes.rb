class AddTaleIdToScenes < ActiveRecord::Migration[6.1]
  def change
    add_reference :scenes, :tale, null: false, foreign_key: true
    add_column :scenes, story_popup, string, null: false
  end
end
