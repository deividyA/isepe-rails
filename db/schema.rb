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

ActiveRecord::Schema[7.0].define(version: 2023_05_25_235716) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classroom_students", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "classroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classroom_students_on_classroom_id"
    t.index ["student_id"], name: "index_classroom_students_on_student_id"
  end

  create_table "classroom_teachers", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "classroom_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classroom_teachers_on_classroom_id"
    t.index ["subject_id"], name: "index_classroom_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_classroom_teachers_on_teacher_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "born"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "school_education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_students_on_person_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.string "graduation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_teachers_on_person_id"
  end

  add_foreign_key "classroom_students", "classrooms"
  add_foreign_key "classroom_students", "students"
  add_foreign_key "classroom_teachers", "classrooms"
  add_foreign_key "classroom_teachers", "subjects"
  add_foreign_key "classroom_teachers", "teachers"
  add_foreign_key "students", "people"
  add_foreign_key "teachers", "people"
end
