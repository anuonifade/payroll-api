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

ActiveRecord::Schema[7.1].define(version: 2024_04_23_021837) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.integer "file_id", null: false
    t.string "document_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["file_id"], name: "unique_file_id", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "unique_email", unique: true
  end

  create_table "payrolls", force: :cascade do |t|
    t.bigint "document_id", null: false
    t.bigint "employee_id", null: false
    t.integer "job_group", default: 0
    t.date "pay_date", null: false
    t.integer "hours_worked", null: false
    t.decimal "amount_paid", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_id"], name: "index_payrolls_on_document_id"
    t.index ["employee_id"], name: "index_payrolls_on_employee_id"
  end

  add_foreign_key "payrolls", "documents"
  add_foreign_key "payrolls", "employees"
end
