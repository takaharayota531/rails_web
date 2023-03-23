create_table "skill_categories", force: true do |t|
  t.string "name", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "feature_categories", force: true do |t|
  t.string "name", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "job_categories", force: true do |t|
  t.string "name", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
