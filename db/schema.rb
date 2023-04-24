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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_203025) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basket_customers", force: :cascade do |t|
    t.bigint "basket_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basket_id"], name: "index_basket_customers_on_basket_id"
    t.index ["customer_id"], name: "index_basket_customers_on_customer_id"
  end

  create_table "basket_products", force: :cascade do |t|
    t.bigint "basket_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basket_id"], name: "index_basket_products_on_basket_id"
    t.index ["product_id"], name: "index_basket_products_on_product_id"
  end

  create_table "baskets", force: :cascade do |t|
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_baskets_on_customer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_farmers", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_farmers_on_customer_id"
    t.index ["farmer_id"], name: "index_customer_farmers_on_farmer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "farm"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_farmers_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "quantity"
    t.string "url_img"
    t.integer "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["farmer_id"], name: "index_products_on_farmer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "isAdmin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "farmer_id"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
  end

  add_foreign_key "basket_customers", "baskets"
  add_foreign_key "basket_customers", "customers"
  add_foreign_key "basket_products", "baskets"
  add_foreign_key "basket_products", "products"
  add_foreign_key "baskets", "customers"
  add_foreign_key "customer_farmers", "customers"
  add_foreign_key "customer_farmers", "farmers"
  add_foreign_key "customers", "users"
  add_foreign_key "farmers", "users"
  add_foreign_key "products", "categories"
end
