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
    t.boolean "is_notification_enabled", default: false, null: false
    t.index ["email"], name: "index_company_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_company_accounts_on_reset_password_token", unique: true
  end

  create_table "company_overalls", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "front_image_url"
    t.string "logo_image_url"
    t.string "industry"
    t.text "company_explanation", null: false
    t.string "explanation_image1_url"
    t.string "explanation_image2_url"
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
    t.string "title_image_url"
    t.text "catch_copy", null: false
    t.boolean "is_job_category_sale", default: false, null: false
    t.boolean "is_job_category_engineer", default: false, null: false
    t.boolean "is_job_category_planner", default: false, null: false
    t.boolean "is_job_category_marketing", default: false, null: false
    t.boolean "is_job_category_designer", default: false, null: false
    t.boolean "is_job_category_human_resource", default: false, null: false
    t.boolean "is_job_category_editor", default: false, null: false
    t.boolean "is_job_category_clercial", default: false, null: false
    t.boolean "is_job_category_consulting", default: false, null: false
    t.boolean "is_job_category_other", default: false, null: false
    t.integer "area", limit: 2, default: 0, null: false
    t.text "work_assignment", null: false
    t.string "work_image1_url"
    t.string "work_image2_url"
    t.text "company_promotion", null: false
    t.integer "salary_system", limit: 2, default: 0, null: false
    t.integer "min_salary", null: false
    t.integer "max_salary", null: false
    t.text "salary_remark"
    t.boolean "supplies_transportation_expense", default: false, null: false
    t.text "transportation_expense_remark"
    t.boolean "intend_for_high_school", default: false, null: false
    t.boolean "intend_for_college1", default: false, null: false
    t.boolean "intend_for_college2", default: false, null: false
    t.boolean "intend_for_college3", default: false, null: false
    t.boolean "intend_for_college4", default: false, null: false
    t.boolean "intend_for_master", default: false, null: false
    t.boolean "intend_for_doctor", default: false, null: false
    t.boolean "intend_for_graduated", default: false, null: false
    t.boolean "intend_for_other", default: false, null: false
    t.integer "working_day", limit: 2, default: 0, null: false
    t.integer "working_hour", null: false
    t.boolean "work_on_monday", default: false, null: false
    t.boolean "work_on_tuesday", default: false, null: false
    t.boolean "work_on_wednesday", default: false, null: false
    t.boolean "work_on_thursday", default: false, null: false
    t.boolean "work_on_friday", default: false, null: false
    t.boolean "work_on_saturday", default: false, null: false
    t.boolean "work_on_sunday", default: false, null: false
    t.string "member1_positon", limit: 15
    t.text "member1_profile"
    t.string "member2_positon", limit: 15
    t.text "member2_profile"
    t.string "member3_positon", limit: 15
    t.text "member3_profile"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "working_style", limit: 2, default: 0, null: false
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
    t.integer "interesting_job_category", limit: 2, default: 0, null: false
    t.boolean "has_internship_experiment", default: false, null: false
    t.boolean "has_other_company_offer", default: false, null: false
    t.text "self_promotion", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", null: false
    t.string "name", null: false
  end

end
