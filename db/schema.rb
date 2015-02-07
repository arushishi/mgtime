# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150205200251) do

  create_table "m_cards", force: true do |t|
    t.string   "card_identification_code"
    t.string   "m_user_id"
    t.integer  "delete_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_users", force: true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "delete_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t_correcteddata", force: true do |t|
    t.integer  "t_punchdatum_id"
    t.integer  "m_user_id"
    t.string   "access_control_kubun"
    t.datetime "corrected_time"
    t.string   "comment"
    t.integer  "delete_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "t_punchdata", force: true do |t|
    t.integer  "m_user_id"
    t.string   "card_identification_code"
    t.string   "access_control_kubun"
    t.datetime "punch_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
