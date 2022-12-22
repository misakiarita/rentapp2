# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_22_041316) do

  create_table "closest_stations", force: :cascade do |t|
    t.string "line"
    t.string "station_name"
    t.integer "walk_by"
    t.integer "rental_building_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_building_id"], name: "index_closest_stations_on_rental_building_id"
  end

  create_table "rental_buildings", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "age"
    t.text "address"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "closest_stations", "rental_buildings"
end
