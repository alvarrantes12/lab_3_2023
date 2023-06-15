ActiveRecord::Schema[7.0].define(version: 2023_06_07_193414) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.bigint "director_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director_id"], name: "index_movies_on_director_id"
  end

end
