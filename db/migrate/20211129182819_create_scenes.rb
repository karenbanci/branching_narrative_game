class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.text :story
      t.string :npc_position, null: false, default: 'left'

      t.timestamps
    end
  end
end
