# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_13_011239) do
  create_table "chat_room_messages", charset: "latin1", force: :cascade do |t|
    t.integer "chat_room_id", null: false
    t.integer "user_id", null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_room_users", charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "chat_room_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_rooms", charset: "latin1", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", charset: "latin1", force: :cascade do |t|
    t.integer "from_user_id", null: false
    t.integer "to_user_id", null: false
    t.boolean "status", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", limit: 20, null: false
    t.integer "age", limit: 3
    t.integer "gender"
    t.integer "level"
    t.integer "purpose"
    t.integer "how_to_connect"
    t.text "self_introduction"
    t.string "icon_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sns", charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "type", null: false
    t.string "sns_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "latin1", force: :cascade do |t|
    t.string "login_email", null: false
    t.string "login_password", limit: 16, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
