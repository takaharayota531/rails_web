create_table "users", force: true do |t|
  t.string "email", default: "", null: false
  t.string "encrypted_password", default: "", null: false
  t.string "reset_password_token"
  t.datetime "reset_password_sent_at"
  t.datetime "remember_created_at"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["email"], name: "index_users_on_email", unique: true
  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  t.string "provider", null: false
  t.string "uid", null: false
  t.string "name", null: false
end

create_table "user_infos", force: true do |t|
  t.string "user_id", null: false
  t.string "family_name", null: false
  t.string "first_name", null: false
  t.integer "birth_year", null: false
  t.integer "birth_month", null: false
  t.integer "birth_day", null: false

  # Enum
  t.integer "gender", limit: 1, null: false, default: 0

  t.string "college_name", null: false
  t.string "college_faculty", null: false
  t.string "college_department"
  # Enum
  t.integer "college_grade", limit: 1, null: false, default: 0
  t.integer "high_school_graduated_year", null: false
  t.string "high_school_name", null: false

  t.string "email", null: false
  t.string "phone_number", null: false

  # タグに変わる可能性あり
  t.integer "interesting_job_category", limit: 1, null: false, default: 0
  t.boolean "has_internship_experiment", null: false, default: false
  t.boolean "has_other_company_offer", null: false, default: false
  t.text "self_promotion", limit: 400, null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
