class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.references :game, null: false, foreign_key: true
      t.text :story

      t.timestamps
    end
  end
end
