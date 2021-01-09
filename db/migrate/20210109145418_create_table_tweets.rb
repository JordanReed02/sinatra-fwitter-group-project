class CreateTableTweets < ActiveRecord::Migration[6.0]
  create_table "tweets", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
