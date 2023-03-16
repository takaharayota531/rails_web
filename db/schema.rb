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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "recruiter_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "company_accounts", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.boolean "notification", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "company_overall_infos", force: :cascade do |t|
    t.string "company_name", null: false
    t.text "introduction", null: false
    t.text "company_goal", null: false
    t.text "application_requirements", null: false
    t.integer "min_salary", null: false
    t.integer "max_salary", null: false
    t.text "employee_welfare", null: false
    t.integer "work_day", null: false
    t.integer "work_hour_start", null: false
    t.integer "work_hour_end", null: false
    t.integer "work_hour_per_day", null: false
    t.string "post_code", null: false
    t.string "workplace", null: false
    t.string "address", null: false
    t.string "nearest_station", null: false
    t.string "homepage_url"
    t.string "company_logo_url"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "company_post_recruit_infos", force: :cascade do |t|
    t.text "title", null: false
    t.text "catch_copy", null: false
    t.text "catch_copy_description", null: false
    t.text "desired_person", null: false
    t.text "work_assignment", null: false
    t.text "acquire_skill", null: false
    t.text "company_charm", null: false
    t.string "main_image_url", null: false
    t.string "sub_image_url", null: false
    t.string "sub_left_image_url", null: false
    t.string "sub_right_image_url", null: false
    t.string "thumbnail_url", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "company_posts", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "recruit_info", null: false
    t.integer "overall_info", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
