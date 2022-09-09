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

ActiveRecord::Schema[7.0].define(version: 2022_09_09_085940) do
  create_table "candidates", force: :cascade do |t|
    t.string "candidate_fname", null: false
    t.string "candidate_lname", null: false
    t.integer "candidate_age", null: false
    t.text "candidate_address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pollcriteria", force: :cascade do |t|
    t.string "poll_question", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "polldetails", force: :cascade do |t|
    t.integer "Pollcriterium_id", null: false
    t.integer "Candidate_id", null: false
    t.integer "Polloption_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Candidate_id"], name: "index_polldetails_on_Candidate_id"
    t.index ["Pollcriterium_id"], name: "index_polldetails_on_Pollcriterium_id"
    t.index ["Polloption_id"], name: "index_polldetails_on_Polloption_id"
  end

  create_table "polloptions", force: :cascade do |t|
    t.integer "Pollcriterium_id", null: false
    t.string "poll_option", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pollcriterium_id"], name: "index_polloptions_on_Pollcriterium_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "polldetails", "Candidates"
  add_foreign_key "polldetails", "Pollcriteria"
  add_foreign_key "polldetails", "Polloptions"
  add_foreign_key "polloptions", "Pollcriteria"
end
