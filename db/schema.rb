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

ActiveRecord::Schema.define(version: 20151128063004) do

  create_table "employee_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employee_skills", ["employee_id"], name: "index_employee_skills_on_employee_id"
  add_index "employee_skills", ["skill_id"], name: "index_employee_skills_on_skill_id"

  create_table "employees", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "suburb"
    t.string   "phonenumber"
    t.string   "email"
    t.string   "origin"
    t.string   "age"
    t.string   "gender"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "address"
    t.text     "about"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "firstnames", force: :cascade do |t|
    t.string   "Lastname"
    t.string   "Suburb"
    t.string   "Phonenumber"
    t.string   "Email"
    t.string   "Origin"
    t.string   "Age"
    t.string   "Gender"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "internships", force: :cascade do |t|
    t.integer  "employer_id"
    t.string   "phonenumber_contact_person"
    t.string   "title"
    t.string   "salary"
    t.string   "suburb"
    t.string   "email_contact_person"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "internships", ["employer_id"], name: "index_internships_on_employer_id"

  create_table "required_skills", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "required_skills", ["job_id"], name: "index_required_skills_on_job_id"

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
