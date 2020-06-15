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

ActiveRecord::Schema.define(version: 20200615083528) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "answer",      null: false
    t.string  "explain",     null: false
    t.string  "genre",       null: false
    t.string  "select",      null: false
    t.integer "question_id"
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.text    "comment",     limit: 65535
    t.index ["question_id"], name: "index_comments_on_question_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "descriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "answer_id"
    t.text    "image",     limit: 65535
    t.index ["answer_id"], name: "index_descriptions_on_answer_id", using: :btree
  end

  create_table "fours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "answer_id"
    t.text    "image",     limit: 65535
    t.index ["answer_id"], name: "index_fours_on_answer_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "title",                         null: false
    t.text    "sentence",        limit: 65535, null: false
    t.string  "question_format",               null: false
    t.integer "rate_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_questions_on_comment_id", using: :btree
    t.index ["rate_id"], name: "index_questions_on_rate_id", using: :btree
    t.index ["title"], name: "index_questions_on_title", using: :btree
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.string  "rate"
    t.index ["question_id"], name: "index_rates_on_question_id", using: :btree
    t.index ["user_id"], name: "index_rates_on_user_id", using: :btree
  end

  create_table "sorts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "answer_id"
    t.text    "image",     limit: 65535
    t.index ["answer_id"], name: "index_sorts_on_answer_id", using: :btree
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

end
