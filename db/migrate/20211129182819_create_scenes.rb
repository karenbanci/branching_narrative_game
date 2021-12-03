class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.text :story
      t.string :npc_position1, null: false, default: 'left'
      t.string :npc_position2, null: false, default: 'right'
      t.string :npc_position3, null: false, default: 'center'

      t.timestamps
    end
  end
end
