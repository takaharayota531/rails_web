create_table "companies", force: true do |t|
  t.string "name", null: false
  t.string "email", null: false
  t.string "phone_number", null: false
  t.string "recruiter_name", null: false
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "company_accounts", force: true do |t|
  t.integer "company_id", null: false
  t.string "name", null: false
  t.string "email", default: "", null: false
  t.string "encrypted_password", default: "", null: false
  t.string "reset_password_token"
  t.datetime "reset_password_sent_at"
  t.datetime "remember_created_at"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["email"], name: "index_company_accounts_on_email", unique: true
  t.index ["reset_password_token"], name: "index_company_accounts_on_reset_password_token", unique: true
  t.boolean "notification", null: false
end

create_table "internships", force: true do |t|
  t.integer "company_id", null: false
  t.integer "recruit_info", null: false
  t.integer "overall_info", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "company_overalls", force: true do |t|
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
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "internship_recruits", force: true do |t|
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

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
