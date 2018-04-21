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

ActiveRecord::Schema.define(version: 20180419214540) do

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

  create_table "expenses", force: :cascade do |t|
    t.string "item_name"
    t.float "cost", default: 0.0
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_expenses_on_project_id"
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
  add_foreign_key "expenses", "projects"
  add_foreign_key "projects", "clients"
  add_foreign_key "tasks", "projects"
end
