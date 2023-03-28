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
  t.boolean "is_notification_enabled", null: false
end

create_table "internships", force: true do |t|
  t.integer "company_id", null: false
  t.integer "internship_recruit_id", null: false
  t.integer "company_overall_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
create_table "company_overalls", force: true do |t|
  t.string "company_name", null: false
  t.string "industry"
  t.text "company_explanation", limit: 400, null: false
  t.string "homepage_url"
  t.string "capital_stock"
  t.string "employee_count"
  t.string "place"
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "internship_recruits", force: true do |t|
  t.text "title", limit: 35, null: false
  t.text "catch_copy", limit: 20, null: false
  t.integer "area", limit: 1, null: false, default: 0
  t.text "work_assignment", limit: 400, null: false
  t.text "company_promotion", limit: 400, null: false
  t.integer "min_salary", null: false
  t.integer "max_salary", null: false
  t.text "salary_remark"
  t.boolean "supplies_transportation_expense", null: false
  t.text "transportation_expense_remark"
  t.string "college_grade", null: false
  t.integer "working_day", limit: 1, null: false, default: 0
  t.integer "working_hour", null: false
  t.boolean "work_on_monday"
  t.boolean "work_on_tuesday"
  t.boolean "work_on_wednesday"
  t.boolean "work_on_thursday"
  t.boolean "work_on_friday"
  t.boolean "work_on_saturday"
  t.boolean "work_on_sunday"
  t.string "member1_positon", limit: 15
  t.text "member1_profile", limit: 100
  t.string "member2_positon", limit: 15
  t.text "member2_profile", limit: 100
  t.string "member3_positon", limit: 15
  t.text "member3_profile", limit: 100
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
# add_enum "internship_recruits", "area", [
#   "足立区",
#   "荒川区",
#   "板橋区",
#   "江戸川区",
#   "大田区",
#   "葛飾区",
#   "北区",
#   "江東区",
#   "品川区",
#   "渋谷区",
#   "新宿区",
#   "杉並区",
#   "墨田区",
#   "世田谷区",
#   "台東区",
#   "中央区",
#   "千代田区",
#   "豊島区",
#   "中野区",
#   "練馬区",
#   "文京区",
#   "港区",
#   "目黒区",
#   "東京都（その他）",
#   "神奈川県",
#   "埼玉県",
#   "千葉県"
# ]
# add_enum "internship_recruits", "transportation_expense", ["あり", "なし"]
# add_enum "internship_recruits", "work_day", ["週１回以上", "週２回以上", "週３回以上", "週４回以上", "週５回"]
