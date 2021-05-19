# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_19_120651) do

  create_table "cell_phones", force: :cascade do |t|
    t.string "CellPhoneName"
    t.string "Type"
    t.string "Memory"
    t.string "Condition"
    t.string "Location"
    t.string "Price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover"
  end

  create_table "headphones", force: :cascade do |t|
    t.string "LaptopName"
    t.string "Memory"
    t.string "Condition"
    t.string "Location"
    t.string "Price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover"
  end

  create_table "home_appliances", force: :cascade do |t|
    t.string "LaptopName"
    t.string "Memory"
    t.string "Condition"
    t.string "Location"
    t.string "Price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover"
  end

  create_table "laptops", force: :cascade do |t|
    t.string "LaptopName"
    t.string "Memory"
    t.string "Condition"
    t.string "Location"
    t.string "Price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover"
  end

  create_table "televisions", force: :cascade do |t|
    t.string "LaptopName"
    t.string "Memory"
    t.string "Condition"
    t.string "Location"
    t.string "Price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cover"
  end

end
