class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :scene, null: false, foreign_key: true
      t.references :consequence, null: false, foreign_key: true

      t.timestamps
    end
  end
end
