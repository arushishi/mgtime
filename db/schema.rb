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

ActiveRecord::Schema.define(version: 20150205200250) do

  create_table "m_cards", force: true, comment: "カードマスタ" do |t|
    t.string   "card_identification_code", limit: 32, default: "No ID CODE", null: false, comment: "カード識別コード"
    t.string   "m_user_id",                limit: 32, default: "No User",    null: false, comment: "ユーザID"
    t.integer  "delete_flg",               limit: 1,  default: 0,            null: false, comment: "削除フラグ"
    t.datetime "created_at",                                                              comment: "作成日時"
    t.datetime "updated_at",                                                              comment: "修正日時"
  end

  create_table "m_users", force: true, comment: "ユーザマスタ" do |t|
    t.string   "user_name",       limit: 128, default: "No Name", null: false, comment: "ユーザ名"
    t.string   "password_digest",             default: "No Pass", null: false, comment: "暗号化パスワード"
    t.string   "remember_token",                                               comment: "ログイン状態保持トークン"
    t.integer  "delete_flg",      limit: 1,   default: 0,         null: false, comment: "削除フラグ"
    t.datetime "created_at",                                                   comment: "作成日時"
    t.datetime "updated_at",                                                   comment: "修正日時"
  end

  add_index "m_users", ["remember_token"], name: "index_m_users_on_remember_token", using: :btree

  create_table "t_correcteddata", force: true, comment: "修正データ" do |t|
    t.integer  "t_punchdata_id",                   default: 0,      null: false, comment: "打刻データID"
    t.integer  "m_user_id",                        default: 0,      null: false, comment: "ユーザID"
    t.string   "access_control_kubun", limit: 7,   default: "None", null: false, comment: "入退室区分（Arrived：出勤、Left：退勤、GoOut：外出、GoBack：戻り）"
    t.datetime "corrected_time",                                                 comment: "日時"
    t.string   "comment",              limit: 128,                               comment: "コメント"
    t.integer  "delete_flg",           limit: 1,   default: 0,      null: false, comment: "削除フラグ"
    t.datetime "created_at",                                                     comment: "作成日時"
    t.datetime "updated_at",                                                     comment: "修正日時"
  end

  create_table "t_punchdata", force: true, comment: "打刻データ" do |t|
    t.integer  "m_user_id",                           default: 0,            null: false, comment: "ユーザID"
    t.string   "card_identification_code", limit: 32, default: "No ID CODE", null: false, comment: "カード識別コード"
    t.string   "access_control_kubun",     limit: 7,  default: "None",       null: false, comment: "入退室区分（Arrived：出勤、Left：退勤、GoOut：外出、GoBack：戻り）"
    t.datetime "punch_time",                                                              comment: "日時"
    t.datetime "created_at",                                                              comment: "作成日時"
    t.datetime "updated_at",                                                              comment: "修正日時"
  end

end
