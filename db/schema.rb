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

ActiveRecord::Schema[7.0].define(version: 2023_03_15_114203) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "recruiter_name", null: false
  end

  create_table "user_resumes", force: :cascade do |t|
    t.text "best_work", null: false
    t.text "future_job", null: false
    t.text "personality", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_ruby", null: false
    t.string "first_name_ruby", null: false
    t.integer "birth_year", null: false
    t.integer "birth_month", null: false
    t.integer "birth_day", null: false
    t.string "login_email"
    t.string "password", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post_code", null: false
    t.string "address", null: false
    t.string "school", null: false
    t.integer "graduate_year", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.integer "resume_id", null: false
  end

  create_table "working_histories", force: :cascade do |t|
    t.integer "resume_id", null: false
    t.string "company_name"
    t.string "position"
    t.string "working_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
