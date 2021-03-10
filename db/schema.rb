ActiveRecord::Schema.define(version: 2021_03_03_113456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text "content"
  end

end
