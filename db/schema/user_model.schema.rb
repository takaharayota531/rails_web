create_table "users", force: true do |t|
  t.string "family_name", null: false
  t.string "first_name", null: false
  t.integer "birth_year", null: false
  t.integer "birth_month", null: false
  t.integer "birth_day", null: false

  # Enum
  t.integer "gender", limit: 1, null: false, default: 0

  t.string "school", null:false
  t.string "school_faculty", null:false
  t.string "school_department"
  # Enum
  t.integer "school_grade", limit: 1, null: false, default: 0
  t.string "graduate_high_school", null:false 

  t.string "email", null:false 
  t.string "phone_number", null:false 

  # タグに変わる可能性あり
  t.integer "interesting_job", limit: 1, null: false, default: 0
  t.boolean "internship_experiment", null: false
  t.boolean "other_company_offer", null:false
  t.text "self_promotion", limit: 400, null: false
  
  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

