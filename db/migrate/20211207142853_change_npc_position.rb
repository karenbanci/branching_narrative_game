class ChangeNpcPosition < ActiveRecord::Migration[6.1]
  def change
    remove_column :scenes, :npc_position1
    remove_column :scenes, :npc_position2
    remove_column :scenes, :npc_position3
    add_column :encounters, :npc_position, :string, default: "left"
  end
end
