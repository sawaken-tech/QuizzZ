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

ActiveRecord::Schema.define(version: 20200909231005) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "answer",                          null: false
    t.text    "answer_image",      limit: 65535
    t.string  "explain",                         null: false
    t.string  "genre"
    t.integer "question_id"
    t.string  "four_select1"
    t.text    "four_image1",       limit: 65535
    t.string  "four_select2"
    t.text    "four_image2",       limit: 65535
    t.string  "four_select3"
    t.text    "four_image3",       limit: 65535
    t.string  "sort_select1"
    t.text    "sort_image1",       limit: 65535
    t.string  "sort_select2"
    t.text    "sort_image2",       limit: 65535
    t.string  "sort_select3"
    t.text    "sort_image3",       limit: 65535
    t.text    "description_image", limit: 65535
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "comment",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",                         null: false
    t.text    "sentence",        limit: 65535, null: false
    t.string  "question_format",               null: false
    t.integer "rate_id"
    t.integer "comment_id"
    t.integer "user_id"
    t.index ["comment_id"], name: "index_questions_on_comment_id", using: :btree
    t.index ["rate_id"], name: "index_questions_on_rate_id", using: :btree
    t.index ["title"], name: "index_questions_on_title", using: :btree
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.string   "rate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "nickname",                            null: false
    t.integer  "rate_id"
    t.integer  "comment_id"
    t.integer  "score_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["comment_id"], name: "index_users_on_comment_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
    t.index ["rate_id"], name: "index_users_on_rate_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "answers", "questions"
end
