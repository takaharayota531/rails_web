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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_notification_enabled", null: false
    t.index ["email"], name: "index_company_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_company_accounts_on_reset_password_token", unique: true
  end

  create_table "company_overalls", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "industry"
    t.text "company_explanation", null: false
    t.string "homepage_url"
    t.string "capital_stock"
    t.string "employee_count"
    t.string "place"
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
    t.integer "area", limit: 2, default: 0, null: false
    t.text "work_assignment", null: false
    t.text "company_promotion", null: false
    t.integer "min_salary", null: false
    t.integer "max_salary", null: false
    t.text "salary_remark"
    t.boolean "supplies_transportation_expense", null: false
    t.text "transportation_expense_remark"
    t.string "college_grade", null: false
    t.integer "working_day", limit: 2, default: 0, null: false
    t.integer "working_hour", null: false
    t.boolean "work_on_monday"
    t.boolean "work_on_tuesday"
    t.boolean "work_on_wednesday"
    t.boolean "work_on_thursday"
    t.boolean "work_on_friday"
    t.boolean "work_on_saturday"
    t.boolean "work_on_sunday"
    t.string "member1_positon", limit: 15
    t.text "member1_profile"
    t.string "member2_positon", limit: 15
    t.text "member2_profile"
    t.string "member3_positon", limit: 15
    t.text "member3_profile"
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
    t.integer "internship_recruit_id", null: false
    t.integer "company_overall_id", null: false
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

  create_table "user_infos", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.integer "birth_year", null: false
    t.integer "birth_month", null: false
    t.integer "birth_day", null: false
    t.integer "gender", limit: 2, default: 0, null: false
    t.string "college_name", null: false
    t.string "college_faculty", null: false
    t.string "college_department"
    t.integer "college_grade", limit: 2, default: 0, null: false
    t.integer "high_school_graduated_year", null: false
    t.string "high_school_name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.integer "interesting_job", limit: 2, default: 0, null: false
    t.boolean "has_internship_experiment", null: false
    t.boolean "has_other_company_offer", null: false
    t.text "self_promotion", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", null: false
    t.string "name", null: false
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
