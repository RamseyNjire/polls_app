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

ActiveRecord::Schema.define(version: 2021_04_18_114913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answerchoices_tables", force: :cascade do |t|
    t.text "text"
    t.integer "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answerchoices_tables_on_question_id", unique: true
  end

  create_table "polls_tables", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_polls_tables_on_user_id", unique: true
  end

  create_table "questions_tables", force: :cascade do |t|
    t.text "text"
    t.integer "poll_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["poll_id"], name: "index_questions_tables_on_poll_id", unique: true
  end

  create_table "responses_tables", force: :cascade do |t|
    t.integer "answer_choice_id"
    t.integer "respondent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_choice_id", "respondent_id"], name: "index_responses_tables_on_answer_choice_id_and_respondent_id"
  end

  create_table "users_tables", force: :cascade do |t|
    t.string "username", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
