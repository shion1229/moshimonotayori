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

ActiveRecord::Schema.define(version: 2023_10_14_150247) do

  create_table "garbage_tag_relations", force: :cascade do |t|
    t.integer "garbage_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garbage_id"], name: "index_garbage_tag_relations_on_garbage_id"
    t.index ["tag_id"], name: "index_garbage_tag_relations_on_tag_id"
  end

  create_table "garbages", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "address"
    t.text "about"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "overall"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toilet_tag_relations", force: :cascade do |t|
    t.integer "toilet_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_toilet_tag_relations_on_tag_id"
    t.index ["toilet_id"], name: "index_toilet_tag_relations_on_toilet_id"
  end

  create_table "toilets", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "title"
    t.string "address"
    t.text "about"
    t.integer "overall"
  end

  add_foreign_key "garbage_tag_relations", "garbages"
  add_foreign_key "garbage_tag_relations", "tags"
  add_foreign_key "toilet_tag_relations", "tags"
  add_foreign_key "toilet_tag_relations", "toilets"
end
