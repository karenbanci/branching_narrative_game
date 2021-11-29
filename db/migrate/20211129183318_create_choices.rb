class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :scene, null: false, foreign_key: true
      t.references :next_scene, null: false, foreign_key: { to_table: "scenes" }
      t.text :option
      t.jsonb :result, null: false, default: {}

      t.timestamps
    end
  end
end
