class CreateNarratives < ActiveRecord::Migration[6.1]
  def change
    create_table :narratives do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :progression, null: false, default: 0
      t.jsonb :pc, null: false, default: {}

      t.timestamps
    end
  end
end
