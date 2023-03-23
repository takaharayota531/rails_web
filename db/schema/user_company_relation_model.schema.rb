create_table "favorites", force: true do |t|
  t.integer "user_id", null: false
  t.integer "internship_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end

create_table "entries", force: true do |t|
  t.integer "user_id", null: false
  t.integer "internship_id", null: false

  t.timestamp "created_at", null: false
  t.timestamp "updated_at", null: false
end
