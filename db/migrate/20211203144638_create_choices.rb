class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :scene, null: false, foreign_key: true
      t.references :next_scene, index: true, foreign_key: { to_table: :scenes }
      t.string :action
      t.string :result

      t.timestamps
    end
  end
end
