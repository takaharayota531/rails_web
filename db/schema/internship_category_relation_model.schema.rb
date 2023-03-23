create_table "internship_skill_category_relations", force: true do |t|
  t.integer "internship_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "internship_feature_category_relations", force: true do |t|
  t.integer "internship_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "internship_job_category_relations", force: true do |t|
  t.integer "internship_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
