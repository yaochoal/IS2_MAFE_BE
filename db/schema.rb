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

ActiveRecord::Schema.define(version: 20180311221201) do

  create_table "career_has_courses", force: :cascade do |t|
    t.integer "career_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_career_has_courses_on_career_id"
    t.index ["course_id"], name: "index_career_has_courses_on_course_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.string "studyplan", 
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id"
    t.integer "scorecomment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_has_themes", force: :cascade do |t|
    t.integer "course_id"
    t.integer "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_has_themes_on_course_id"
    t.index ["theme_id"], name: "index_course_has_themes_on_theme_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.integer "scoreresource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scorecomments", force: :cascade do |t|
    t.integer "positive"
    t.integer "negative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scoreresources", force: :cascade do |t|
    t.integer "score"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scoreteachers", force: :cascade do |t|
    t.integer "score"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_has_courses", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_teacher_has_courses_on_course_id"
    t.index ["teacher_id"], name: "index_teacher_has_courses_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "scoreteacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theme_has_resources", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_theme_has_resources_on_resource_id"
    t.index ["theme_id"], name: "index_theme_has_resources_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "avatar"
    t.integer "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
