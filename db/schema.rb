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

ActiveRecord::Schema[7.1].define(version: 2023_10_26_175559) do
  create_table "advantages", force: :cascade do |t|
    t.string "advantage"
    t.string "description"
    t.integer "cost"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_advantages_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disadvantages", force: :cascade do |t|
    t.string "disadvantage"
    t.string "description"
    t.integer "cost"
    t.string "self_control"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_disadvantages_on_character_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill"
    t.boolean "tech_level_required"
    t.boolean "specialization_required"
    t.string "description"
    t.string "defaults"
    t.string "difficulty"
    t.string "attribute_modifiers"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_skills_on_character_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "spell"
    t.string "spell_class"
    t.string "description"
    t.string "duration"
    t.string "cost_to_cast"
    t.string "cost_to_maintain"
    t.string "time_to_cast"
    t.string "prerequisites"
    t.string "difficulty"
    t.string "spell_college"
    t.string "item_enchantment"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_spells_on_character_id"
  end

  add_foreign_key "advantages", "characters"
  add_foreign_key "disadvantages", "characters"
  add_foreign_key "skills", "characters"
  add_foreign_key "spells", "characters"
end
