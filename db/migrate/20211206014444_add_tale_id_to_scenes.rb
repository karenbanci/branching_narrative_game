class AddTaleIdToScenes < ActiveRecord::Migration[6.1]
  def change
    add_reference :scenes, :tale, null: false, foreign_key: true
  end
end
