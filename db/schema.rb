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

ActiveRecord::Schema.define(version: 2019_03_27_154650) do

  create_table "ads", force: :cascade do |t|
    t.string "name"
    t.integer "client_id"
    t.string "ad_type"
    t.string "picture"
    t.string "location"
    t.string "target_age"
    t.string "copy"
    t.string "duration"
    t.string "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_ads_on_client_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.integer "ad_id"
    t.integer "employee_id"
    t.string "client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_campaigns_on_ad_id"
    t.index ["employee_id"], name: "index_campaigns_on_employee_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "logo"
    t.string "website"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.integer "company_id"
    t.string "email"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "campaign_id"
    t.string "name"
    t.string "report_type"
    t.string "client"
    t.string "duration"
    t.float "roi"
    t.integer "impressions"
    t.integer "views"
    t.integer "clicks"
    t.integer "reach"
    t.float "conversions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_reports_on_campaign_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
