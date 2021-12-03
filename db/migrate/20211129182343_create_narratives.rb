class CreateNarratives < ActiveRecord::Migration[6.1]
  def change
    create_table :narratives do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :progression, null: false, default: 0
      t.jsonb :pc, null: false, default: {}
      t.string :pc_name, null: false, default: 'Captain'

      t.timestamps
    end
  end
end
