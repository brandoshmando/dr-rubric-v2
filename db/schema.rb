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

ActiveRecord::Schema.define(version: 20150130020404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistants_sections", id: false, force: true do |t|
    t.integer "assistant_id"
    t.integer "section_id"
  end

  add_index "assistants_sections", ["assistant_id"], name: "index_assistants_sections_on_assistant_id", using: :btree
  add_index "assistants_sections", ["section_id"], name: "index_assistants_sections_on_section_id", using: :btree

  create_table "comment_scores", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_scoreable_id"
    t.string   "comment_scoreable_type"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "criteria_id"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professor_id"
  end

  create_table "courses_evals", id: false, force: true do |t|
    t.integer "eval_id"
    t.integer "course_id"
  end

  add_index "courses_evals", ["course_id"], name: "index_courses_evals_on_course_id", using: :btree
  add_index "courses_evals", ["eval_id"], name: "index_courses_evals_on_eval_id", using: :btree

  create_table "courses_grading_periods", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "grading_period_id"
  end

  create_table "criterion", force: true do |t|
    t.text     "body"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eval_id"
  end

  create_table "evals", force: true do |t|
    t.string   "title"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professor_id"
  end

  create_table "grades", force: true do |t|
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gradeable_id"
    t.string   "gradeable_type"
  end

  create_table "grading_periods", force: true do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "points", force: true do |t|
    t.integer  "pointable_id"
    t.string   "pointable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "value"
  end

  create_table "rosters", force: true do |t|
    t.integer  "section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters_sections", id: false, force: true do |t|
    t.integer "roster_id"
    t.integer "section_id"
  end

  create_table "rosters_students", id: false, force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roster_id"
    t.integer  "student_id"
  end

  create_table "sections", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                               null: false
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
