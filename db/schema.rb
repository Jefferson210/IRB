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

ActiveRecord::Schema.define(version: 20161212201224) do

  create_table "colors", force: true do |t|
    t.string   "colorName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossings", primary_key: "crossCode", force: true do |t|
    t.integer  "year"
    t.string   "status"
    t.string   "father"
    t.string   "mother"
    t.integer  "crossWeek"
    t.integer  "numCrossings"
    t.integer  "goodCrossings"
    t.integer  "badCrossings"
    t.string   "effective"
    t.decimal  "percentageEffective", precision: 5, scale: 2
    t.date     "dateHarvest"
    t.integer  "weekHarvest"
    t.integer  "numSeeds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genetic_banks", primary_key: "code", force: true do |t|
    t.string   "location"
    t.string   "trademark"
    t.string   "denomination"
    t.integer  "year"
    t.string   "breeder"
    t.string   "status"
    t.integer  "numPlants"
    t.string   "scent"
    t.string   "headSize"
    t.integer  "numPetals"
    t.decimal  "steamLenght",  precision: 10, scale: 0
    t.string   "production"
    t.string   "opening"
    t.text     "abnormality"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id", using: :btree

end
