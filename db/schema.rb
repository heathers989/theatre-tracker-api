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

ActiveRecord::Schema.define(version: 2020_05_18_022730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "musicals", force: :cascade do |t|
    t.string "name"
    t.string "cast", default: [], array: true
    t.string "understudies", default: [], array: true
    t.string "theater"
    t.string "playbill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "show_seen"
    t.string "cast_to_see"
    t.date "date_of_show"
    t.boolean "if_understudies"
    t.string "understudies_seen", default: [], array: true
    t.integer "rating"
    t.boolean "if_stagedoor"
    t.string "at_stagedoor", default: [], array: true
    t.string "photos"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "musical_id"
    t.string "reviewer_name"
  end

end
