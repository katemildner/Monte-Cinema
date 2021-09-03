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

ActiveRecord::Schema.define(version: 2021_09_03_103101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinema_halls", force: :cascade do |t|
    t.string "name", null: false
    t.integer "number_of_rows", null: false
    t.integer "number_of_seats_per_row", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "director", null: false
    t.string "genre", null: false
    t.time "duration", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "screening_id", null: false
    t.bigint "status_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["screening_id"], name: "index_reservations_on_screening_id"
    t.index ["status_id"], name: "index_reservations_on_status_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "screenings", force: :cascade do |t|
    t.datetime "starting_date_and_time", null: false
    t.bigint "cinema_hall_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cinema_hall_id"], name: "index_screenings_on_cinema_hall_id"
    t.index ["movie_id"], name: "index_screenings_on_movie_id"
  end

  create_table "seat_reservations", force: :cascade do |t|
    t.bigint "reservation_id", null: false
    t.bigint "seat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_seat_reservations_on_reservation_id"
    t.index ["seat_id"], name: "index_seat_reservations_on_seat_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_name", null: false
    t.boolean "reserved", null: false
    t.bigint "cinema_hall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cinema_hall_id"], name: "index_seats_on_cinema_hall_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_vouchers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "voucher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_vouchers_on_user_id"
    t.index ["voucher_id"], name: "index_user_vouchers_on_voucher_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "points_earned"
    t.string "username"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "code"
    t.datetime "expiration_date"
    t.integer "points_required"
    t.string "reward"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "screenings"
  add_foreign_key "reservations", "statuses"
  add_foreign_key "reservations", "users"
  add_foreign_key "screenings", "cinema_halls"
  add_foreign_key "screenings", "movies"
  add_foreign_key "seat_reservations", "reservations"
  add_foreign_key "seat_reservations", "seats"
  add_foreign_key "seats", "cinema_halls"
  add_foreign_key "user_vouchers", "users"
  add_foreign_key "user_vouchers", "vouchers"
end
