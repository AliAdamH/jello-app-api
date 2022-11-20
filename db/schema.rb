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

ActiveRecord::Schema[7.0].define(version: 2022_11_20_080328) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "col_order_ids", default: [], array: true
  end

  create_table "columns", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "board_id"
    t.integer "task_orders", default: [], array: true
    t.index ["board_id"], name: "index_columns_on_board_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.bigint "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_labels_on_board_id"
  end

  create_table "labels_tasks", id: false, force: :cascade do |t|
    t.bigint "task_id", null: false
    t.bigint "label_id", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "column_id"
    t.string "cover_color", default: "#ffffff"
    t.string "cover_text_color", default: "#000000"
    t.index ["column_id"], name: "index_tasks_on_column_id"
  end

  add_foreign_key "columns", "boards"
  add_foreign_key "labels", "boards"
  add_foreign_key "tasks", "columns"
end
