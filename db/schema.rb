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

ActiveRecord::Schema.define(version: 20140927003842) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.string   "student_number"
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["course_id"], name: "index_enrollments_on_course_id"
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id"

  create_table "users", force: true do |t|
    t.string   "name",           null: false
    t.string   "bsc_number"
    t.string   "msc_number"
    t.string   "phd_number"
    t.string   "email"
    t.string   "identity_card"
    t.string   "phone"
    t.string   "address"
    t.date     "birth_date"
    t.integer  "membership"
    t.boolean  "paid"
    t.integer  "responsible_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["responsible_id"], name: "index_users_on_responsible_id"

end
