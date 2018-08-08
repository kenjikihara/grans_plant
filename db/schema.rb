ActiveRecord::Schema.define(version: 2018_07_31_043651) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "grans_name"
    t.text "grans_image"
    t.string "plants_name"
    t.text "plants_image"
    t.boolean "transfer_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
