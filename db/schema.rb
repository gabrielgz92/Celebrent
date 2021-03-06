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

ActiveRecord::Schema.define(version: 2019_05_30_050735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.integer "duration"
    t.integer "rate_per_hour"
    t.bigint "user_id"
    t.bigint "celebrity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "booking_date"
    t.index ["celebrity_id"], name: "index_bookings_on_celebrity_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "celebrities", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.text "description"
    t.string "gender"
    t.datetime "date_of_birth"
    t.string "photo"
    t.integer "rate_per_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "city"
    t.string "country"
  end

  create_table "celebrity_tags", force: :cascade do |t|
    t.bigint "celebrity_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["celebrity_id"], name: "index_celebrity_tags_on_celebrity_id"
    t.index ["tag_id"], name: "index_celebrity_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
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
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.text "description"
    t.string "gender"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "celebrity_id"
    t.bigint "user_id"
    t.index ["celebrity_id"], name: "index_wishlists_on_celebrity_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "bookings", "celebrities"
  add_foreign_key "bookings", "users"
  add_foreign_key "celebrity_tags", "celebrities"
  add_foreign_key "celebrity_tags", "tags"
  add_foreign_key "wishlists", "celebrities"
  add_foreign_key "wishlists", "users"
end
