class CreateConsequences < ActiveRecord::Migration[6.1]
  def change
    create_table :consequences do |t|
      t.string :option, null: false, default: ""
      t.jsonb :result, null: false, default: {}
      t.references :next_scene, null: false, foreign_key: { to_table: "scenes" }

      t.timestamps
    end
  end
end
