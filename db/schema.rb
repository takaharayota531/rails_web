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

  create_table "admins", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "recruiter_name", null: false
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

  create_table "company_overalls", force: :cascade do |t|
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

  create_table "entries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "internship_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "internship_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "feature_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "internship_feature_category_relations", force: :cascade do |t|
    t.integer "internship_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "internship_job_category_relations", force: :cascade do |t|
    t.integer "internship_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "internship_recruits", force: :cascade do |t|
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

  create_table "internship_skill_category_relations", force: :cascade do |t|
    t.integer "internship_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "internships", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "recruit_info", null: false
    t.integer "overall_info", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "skill_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "user_resumes", force: :cascade do |t|
    t.text "best_work", null: false
    t.text "future_job", null: false
    t.text "personality", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
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
    t.string "post_code", null: false
    t.string "address", null: false
    t.string "school", null: false
    t.integer "graduate_year", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.integer "resume_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "working_histories", force: :cascade do |t|
    t.integer "resume_id", null: false
    t.string "company_name"
    t.string "position"
    t.string "working_period"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
