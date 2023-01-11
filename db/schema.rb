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

ActiveRecord::Schema[7.0].define(version: 2023_01_11_153320) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "price"
    t.string "make"
    t.string "model"
    t.string "fuel_type"
    t.string "transmission"
    t.integer "mileage"
    t.integer "engine_size"
    t.integer "year"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email_address"
    t.integer "phone_number"
    t.text "from_adress"
    t.text "to_adress"
    t.date "check_in_date"
    t.date "check_out_date"
    t.time "check_in_time"
    t.time "check_out_time"
    t.text "additional_information"
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image_url"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
