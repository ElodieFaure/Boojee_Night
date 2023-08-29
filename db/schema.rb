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

ActiveRecord::Schema[7.0].define(version: 2023_08_29_095848) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bar_tags", force: :cascade do |t|
    t.bigint "bar_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_bar_tags_on_bar_id"
    t.index ["tag_id"], name: "index_bar_tags_on_tag_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "category"
    t.text "description"
    t.integer "average_price"
    t.time "open_at"
    t.time "close_at"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bars_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "promotion_id", null: false
    t.integer "qr_progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "index_bookings_on_promotion_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.string "name"
    t.string "offer"
    t.date "start_date"
    t.date "end_date"
    t.bigint "bar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_promotions_on_bar_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
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
    t.string "category"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bar_tags", "bars"
  add_foreign_key "bar_tags", "tags"
  add_foreign_key "bars", "users"
  add_foreign_key "bookings", "promotions"
  add_foreign_key "bookings", "users"
  add_foreign_key "promotions", "bars"
  add_foreign_key "reviews", "bookings"
end
