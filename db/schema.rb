# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140816151143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: true do |t|
    t.integer  "landlord_id"
    t.integer  "tenant_id"
    t.integer  "payment_due_date"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "credit_union"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contracts", ["landlord_id"], name: "index_contracts_on_landlord_id", using: :btree
  add_index "contracts", ["tenant_id"], name: "index_contracts_on_tenant_id", using: :btree

  create_table "landlords", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "telephone",                           null: false
    t.string   "name"
  end

  add_index "landlords", ["email"], name: "index_landlords_on_email", unique: true, using: :btree
  add_index "landlords", ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true, using: :btree

  create_table "payments", force: true do |t|
    t.integer  "contract_id"
    t.boolean  "full",        default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["contract_id"], name: "index_payments_on_contract_id", using: :btree

  create_table "tenants", force: true do |t|
    t.string   "telephone",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tenants", ["telephone"], name: "index_tenants_on_telephone", unique: true, using: :btree

end
