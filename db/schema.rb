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

ActiveRecord::Schema.define(version: 20141230041201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistants_sections", id: false, force: true do |t|
    t.integer "assistant_id"
    t.integer "section_id"
  end

  add_index "assistants_sections", ["assistant_id"], name: "index_assistants_sections_on_assistant_id", using: :btree
  add_index "assistants_sections", ["section_id"], name: "index_assistants_sections_on_section_id", using: :btree

  create_table "comment_scores", force: true do |t|
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "body"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professor_id"
  end

  create_table "courses_evals", id: false, force: true do |t|
    t.integer "courses_id"
    t.integer "evals_id"
  end

  create_table "courses_grading_periods", id: false, force: true do |t|
    t.integer "courses_id"
    t.integer "grading_periods_id"
  end

  create_table "criteria", force: true do |t|
    t.text     "body"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evals", force: true do |t|
    t.string   "title"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grading_periods", force: true do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rosters", force: true do |t|
    t.integer  "section"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
  end

  create_table "sections", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "roster_id"
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
    t.string   "email"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
