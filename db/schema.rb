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

ActiveRecord::Schema.define(version: 20180426222006) do

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
    t.string "studyplan", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_resources", force: :cascade do |t|
    t.integer "user_id"
    t.integer "resource_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_teachers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "teacher_id"
    t.string "comment"
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

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.string "subject"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_has_resources", force: :cascade do |t|
    t.integer "course_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_has_resources_on_course_id"
    t.index ["resource_id"], name: "index_course_has_resources_on_resource_id"
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
    t.integer "user_id"
    t.integer "scoreresource_id"
    t.string "description"
    t.string "resource"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_comment_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_course_id"
    t.integer "negative"
    t.integer "positive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_comment_resources", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_resource_id"
    t.integer "negative"
    t.integer "positive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_comment_teachers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_teacher_id"
    t.integer "negative"
    t.integer "positive"
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

  create_table "teacher_has_resources", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_teacher_has_resources_on_resource_id"
    t.index ["teacher_id"], name: "index_teacher_has_resources_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "scoreteacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password1"
    t.string "image"
    t.string "avatar"
    t.integer "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
