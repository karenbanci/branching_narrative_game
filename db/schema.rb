# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_03_144738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.bigint "scene_id", null: false
    t.bigint "next_scene_id"
    t.string "action"
    t.string "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["next_scene_id"], name: "index_choices_on_next_scene_id"
    t.index ["scene_id"], name: "index_choices_on_scene_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.bigint "npc_id", null: false
    t.bigint "scene_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["npc_id"], name: "index_encounters_on_npc_id"
    t.index ["scene_id"], name: "index_encounters_on_scene_id"
  end

  create_table "narratives", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "progression", default: 0, null: false
    t.jsonb "pc", default: {}, null: false
    t.string "pc_name", default: "Captain", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_narratives_on_user_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name", default: "?", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scenes", force: :cascade do |t|
    t.text "story"
    t.string "npc_position1", default: "left", null: false
    t.string "npc_position2", default: "right", null: false
    t.string "npc_position3", default: "center", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "choices", "scenes"
  add_foreign_key "choices", "scenes", column: "next_scene_id"
  add_foreign_key "encounters", "npcs"
  add_foreign_key "encounters", "scenes"
  add_foreign_key "narratives", "users"
end
