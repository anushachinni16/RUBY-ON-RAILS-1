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

ActiveRecord::Schema.define(version: 2021_07_02_101518) do

  create_table "biodata", force: :cascade do |t|
    t.string "fullname"
    t.string "fathername"
    t.datetime "dateofbirth"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "country"
    t.boolean "married"
    t.boolean "unmarried"
  end

  create_table "entersofts", force: :cascade do |t|
    t.string "fullname"
    t.string "fathername"
    t.string "email"
    t.integer "mobilenumber"
    t.string "location"
    t.boolean "areureadytorelocate"
    t.integer "btechpercentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "fullname"
    t.string "fathername"
    t.datetime "dateofbirth"
    t.string "email"
    t.string "gender"
    t.string "country"
    t.boolean "married"
    t.boolean "unmarried"
    t.integer "mobilenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "person_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_plants_on_person_id"
  end

  add_foreign_key "plants", "people"
end
