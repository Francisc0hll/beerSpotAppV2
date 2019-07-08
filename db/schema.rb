# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_08_012139) do

  create_table "beer_spots", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "qualification"
    t.index ["user_id"], name: "index_beer_spots_on_user_id"
  end

  create_table "beer_spots_beers", id: false, force: :cascade do |t|
    t.integer "beer_id", null: false
    t.integer "beer_spot_id", null: false
    t.index ["beer_id", "beer_spot_id"], name: "index_beer_spots_beers_on_beer_id_and_beer_spot_id"
    t.index ["beer_spot_id", "beer_id"], name: "index_beer_spots_beers_on_beer_spot_id_and_beer_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "style"
    t.string "qualification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
