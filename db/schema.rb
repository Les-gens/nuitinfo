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

ActiveRecord::Schema.define(version: 2021_12_02_225205) do

  create_table "boats", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"boat_id\"", name: "index_boats_on_boat_id"
    t.index ["name"], name: "index_boats_on_name"
  end

  create_table "people", force: :cascade do |t|
    t.text "name"
    t.datetime "birthdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"people_id\"", name: "index_people_on_people_id"
  end

  create_table "stories", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date"
  end

  create_table "story_boats", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "boat_id"
    t.integer "story_id"
    t.index ["boat_id"], name: "index_story_boats_on_boat_id"
    t.index ["story_id"], name: "index_story_boats_on_story_id"
  end

  create_table "story_people", force: :cascade do |t|
    t.text "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "person_id"
    t.integer "story_id"
    t.index ["person_id"], name: "index_story_people_on_person_id"
    t.index ["story_id"], name: "index_story_people_on_story_id"
  end

end
