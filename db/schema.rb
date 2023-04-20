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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_04_19_074631) do
=======
ActiveRecord::Schema[7.0].define(version: 2023_04_16_161736) do
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.bigint "farmer_id", null: false
    t.string "animal_type"
    t.string "breed"
    t.integer "age"
    t.integer "price"
    t.boolean "in_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["farmer_id"], name: "index_animals_on_farmer_id"
  end

<<<<<<< HEAD
  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "animal_id", null: false
    t.bigint "land_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_carts_on_animal_id"
    t.index ["land_id"], name: "index_carts_on_land_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

=======
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7
  create_table "farmers", force: :cascade do |t|
    t.string "farmer_name"
    t.string "farmer_location"
    t.integer "contact_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

  create_table "jwt_blacklists", force: :cascade do |t|
    t.string "jti"
    t.datetime "exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_blacklists_on_jti"
  end

  create_table "lands", force: :cascade do |t|
    t.integer "farmer_id"
    t.float "price"
    t.string "location"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "leases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "land_id"
    t.boolean "lease_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "animal_id"
    t.float "total_price"
    t.boolean "order_status"
    t.string "delivery_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "farmers"
<<<<<<< HEAD
  add_foreign_key "carts", "animals"
  add_foreign_key "carts", "lands"
  add_foreign_key "carts", "users"
=======
>>>>>>> 5c5ccb776610e5934588a3573c46fc2cfcf0edb7
end
