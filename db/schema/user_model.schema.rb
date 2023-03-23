create_table "users", force: true do |t|
  t.string "family_name", null: false
  t.string "first_name", null: false
  t.string "family_name_ruby", null: false
  t.string "first_name_ruby", null: false
  t.integer "birth_year", null: false
  t.integer "birth_month", null: false
  t.integer "birth_day", null: false
  t.string "login_email", unique: true

  t.string "password", null: false
  t.string "image", null: false
  t.string "post_code", null: false
  t.string "address", null: false

  t.string "school", null: false
  t.integer "graduate_year", null: false
  t.string "email", null: false
  t.string "phone_number", null: false

  t.integer "resume_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "user_resumes", force: true do |t|
  t.text "best_work", null: false
  t.text "future_job", null: false
  t.text "personality", null: false
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "working_histories", force: true do |t|
  t.integer "resume_id", null: false
  t.string "company_name"
  t.string "position"
  t.string "working_period"

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
