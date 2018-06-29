# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180629033956) do

  create_table "certificates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hours"
    t.string "certificable_type"
    t.integer "certificable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certificable_type", "certificable_id"], name: "index_certificates_on_certificable_type_and_certificable_id"
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "keynotes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshop_users", force: :cascade do |t|
    t.integer "workshop_id"
    t.integer "user_id"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_workshop_users_on_user_id"
    t.index ["workshop_id"], name: "index_workshop_users_on_workshop_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
