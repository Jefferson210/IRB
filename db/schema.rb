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

ActiveRecord::Schema.define(version: 20161213175700) do

  create_table "colors", force: :cascade do |t|
    t.string   "colorName",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossings", primary_key: "crossCode", force: :cascade do |t|
    t.integer  "year",                limit: 4
    t.string   "status",              limit: 255
    t.string   "father",              limit: 255
    t.string   "mother",              limit: 255
    t.integer  "crossWeek",           limit: 4
    t.integer  "numCrossings",        limit: 4
    t.integer  "goodCrossings",       limit: 4
    t.integer  "badCrossings",        limit: 4
    t.string   "effective",           limit: 255
    t.decimal  "percentageEffective",             precision: 5, scale: 2
    t.date     "dateHarvest"
    t.integer  "weekHarvest",         limit: 4
    t.integer  "numSeeds",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crossings", ["father"], name: "fk_rails_55550c59ae", using: :btree
  add_index "crossings", ["mother"], name: "fk_rails_0f4a8a74d0", using: :btree

  create_table "genetic_banks", primary_key: "code", force: :cascade do |t|
    t.string   "location",     limit: 255
    t.string   "trademark",    limit: 255
    t.string   "denomination", limit: 255
    t.integer  "year",         limit: 4
    t.string   "breeder",      limit: 255
    t.string   "status",       limit: 255
    t.integer  "numPlants",    limit: 4
    t.string   "scent",        limit: 255
    t.string   "headSize",     limit: 255
    t.integer  "numPetals",    limit: 4
    t.decimal  "steamLenght",                precision: 10
    t.string   "production",   limit: 255
    t.string   "opening",      limit: 255
    t.text     "abnormality",  limit: 65535
    t.text     "remarks",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id",     limit: 4
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id", using: :btree

  create_table "irb_selections", primary_key: "code", force: :cascade do |t|
    t.string   "codeCross",    limit: 255
    t.string   "location",     limit: 255
    t.string   "trademark",    limit: 255
    t.string   "denomination", limit: 255
    t.integer  "year",         limit: 4
    t.string   "status",       limit: 255
    t.integer  "numPlants",    limit: 4
    t.integer  "color_id",     limit: 4
    t.string   "scent",        limit: 255
    t.string   "headSize",     limit: 255
    t.integer  "numPetals",    limit: 4
    t.decimal  "steamLenght",                precision: 5, scale: 2
    t.string   "production",   limit: 255
    t.string   "opening",      limit: 255
    t.text     "abnormality",  limit: 65535
    t.text     "remarks",      limit: 65535
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "irb_selections", ["color_id"], name: "index_irb_selections_on_color_id", using: :btree

  create_table "one_offsprings", id: false, force: :cascade do |t|
    t.string   "codeCross",  limit: 255,                         null: false
    t.integer  "individual", limit: 4,                           null: false
    t.integer  "color_id",   limit: 4
    t.string   "status",     limit: 255
    t.decimal  "headSize",               precision: 5, scale: 2
    t.integer  "flowering",  limit: 4
    t.integer  "numPetals",  limit: 4
    t.string   "form",       limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "one_offsprings", ["color_id"], name: "index_one_offsprings_on_color_id", using: :btree

  create_table "seeds", id: false, force: :cascade do |t|
    t.string   "codeCross",             limit: 255,                         null: false
    t.date     "sowDate",                                                   null: false
    t.string   "origin",                limit: 255
    t.integer  "numSeeds",              limit: 4
    t.decimal  "totalWeight",                       precision: 5, scale: 2
    t.integer  "week",                  limit: 4
    t.string   "hydratation",           limit: 255
    t.string   "status",                limit: 255
    t.date     "dateOut"
    t.integer  "totalGermination",      limit: 4
    t.decimal  "percentageGermination",             precision: 5, scale: 2
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  create_table "spek_selections", primary_key: "code", force: :cascade do |t|
    t.string   "location",     limit: 255
    t.string   "trademark",    limit: 255
    t.string   "denomination", limit: 255
    t.integer  "year",         limit: 4
    t.string   "status",       limit: 255
    t.integer  "numPlants",    limit: 4
    t.integer  "color_id",     limit: 4
    t.string   "scent",        limit: 255
    t.string   "headSize",     limit: 255
    t.integer  "numPetals",    limit: 4
    t.decimal  "steamLenght",                precision: 5, scale: 2
    t.string   "production",   limit: 255
    t.string   "opening",      limit: 255
    t.text     "abnormality",  limit: 65535
    t.text     "remarks",      limit: 65535
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "spek_selections", ["color_id"], name: "index_spek_selections_on_color_id", using: :btree

  create_table "three_offsprings", id: false, force: :cascade do |t|
    t.string   "codeCross",  limit: 255,                         null: false
    t.integer  "individual", limit: 4,                           null: false
    t.integer  "color_id",   limit: 4
    t.string   "status",     limit: 255
    t.decimal  "headSize",               precision: 5, scale: 2
    t.integer  "flowering",  limit: 4
    t.integer  "numPetals",  limit: 4
    t.string   "form",       limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "three_offsprings", ["color_id"], name: "index_three_offsprings_on_color_id", using: :btree

  create_table "two_offsprings", id: false, force: :cascade do |t|
    t.string   "codeCross",  limit: 255,                         null: false
    t.integer  "individual", limit: 4,                           null: false
    t.integer  "color_id",   limit: 4
    t.string   "status",     limit: 255
    t.decimal  "headSize",               precision: 5, scale: 2
    t.integer  "flowering",  limit: 4
    t.integer  "numPetals",  limit: 4
    t.string   "form",       limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "two_offsprings", ["color_id"], name: "index_two_offsprings_on_color_id", using: :btree

  add_foreign_key "crossings", "genetic_banks", column: "father", primary_key: "code"
  add_foreign_key "crossings", "genetic_banks", column: "mother", primary_key: "code"
  add_foreign_key "irb_selections", "colors"
  add_foreign_key "one_offsprings", "colors"
  add_foreign_key "spek_selections", "colors"
  add_foreign_key "three_offsprings", "colors"
  add_foreign_key "two_offsprings", "colors"
end
