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

ActiveRecord::Schema.define(version: 20180506155446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_clients_on_project_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_employees_on_project_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "item_name"
    t.float "cost", default: 0.0
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_expenses_on_project_id"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.text "name"
    t.integer "quantity"
    t.float "rate"
    t.float "amount"
    t.bigint "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_items_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.text "logo"
    t.text "name"
    t.text "invoice_id"
    t.text "from"
    t.text "to_heading"
    t.text "to_description"
    t.date "date"
    t.text "payment_terms"
    t.date "due_date"
    t.float "balance_due"
    t.float "subtotal"
    t.float "discount"
    t.float "tax"
    t.float "total"
    t.float "amount_paid"
    t.text "notes_heading"
    t.text "notes_text"
    t.text "terms_text"
    t.text "terms_heading"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["project_id"], name: "index_invoices_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "amount", default: 0.0
    t.bigint "client_id"
    t.text "description"
    t.float "amount_paid", default: 0.0
    t.string "type_of_service"
    t.date "start_date"
    t.date "end_date"
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  add_foreign_key "clients", "projects"
  add_foreign_key "employees", "projects"
  add_foreign_key "expenses", "projects"
  add_foreign_key "invoice_items", "invoices"
  add_foreign_key "invoices", "projects"
  add_foreign_key "projects", "clients"
  add_foreign_key "tasks", "projects"
end
