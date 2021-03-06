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

ActiveRecord::Schema.define(version: 20170402202915) do

  create_table "colors", force: :cascade do |t|
    t.string   "colorName",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossings", force: :cascade do |t|
    t.string   "codeCross",           limit: 255
    t.string   "numOrder",            limit: 255
    t.integer  "year",                limit: 4
    t.string   "status",              limit: 255
    t.integer  "father_id",           limit: 4
    t.integer  "mother_id",           limit: 4
    t.integer  "crossWeek",           limit: 4
    t.integer  "numCrossings",        limit: 4
    t.integer  "goodCrossings",       limit: 4
    t.integer  "badCrossings",        limit: 4
    t.string   "effective",           limit: 255
    t.decimal  "percentageEffective",             precision: 5, scale: 2
    t.date     "dateHarvest"
    t.integer  "weekHarvest",         limit: 4
    t.integer  "numSeeds",            limit: 4
    t.integer  "numRepeat",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crossings", ["father_id"], name: "fk_father_id", using: :btree
  add_index "crossings", ["mother_id"], name: "fk_mother_id", using: :btree

  create_table "genetic_bank_pictures", force: :cascade do |t|
    t.integer  "genetic_bank_id",      limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "genetic_bank_pictures", ["genetic_bank_id"], name: "index_genetic_bank_pictures_on_genetic_bank_id", using: :btree

  create_table "genetic_banks", force: :cascade do |t|
    t.string   "code",         limit: 255
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

  create_table "germinations", force: :cascade do |t|
    t.integer  "seed_id",            limit: 4
    t.string   "week",               limit: 255
    t.integer  "numGerminations",    limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "codeCross",          limit: 255
    t.string   "codeCrossNumRepeat", limit: 255
    t.integer  "totalCode",          limit: 4
    t.integer  "totalNumRepeat",     limit: 4
    t.integer  "missingSeed",        limit: 4
  end

  add_index "germinations", ["seed_id"], name: "fk_rails_6b14e2e2b3", using: :btree

  create_table "irb_selections", force: :cascade do |t|
    t.integer  "three_offspring_id", limit: 4
    t.string   "code",               limit: 255,                           null: false
    t.string   "location",           limit: 255
    t.string   "trademark",          limit: 255
    t.string   "denomination",       limit: 255
    t.integer  "year",               limit: 4
    t.string   "status",             limit: 255
    t.integer  "numPlants",          limit: 4
    t.string   "color",              limit: 255
    t.string   "scent",              limit: 255
    t.string   "headSize",           limit: 255
    t.integer  "numPetals",          limit: 4
    t.decimal  "steamLenght",                      precision: 5, scale: 2
    t.string   "production",         limit: 255
    t.string   "opening",            limit: 255
    t.text     "abnormality",        limit: 65535
    t.text     "remarks",            limit: 65535
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "irb_selections", ["three_offspring_id"], name: "fk_rails_6047393694", using: :btree

  create_table "irb_selections_pictures", force: :cascade do |t|
    t.integer  "irb_selection_id",     limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "irb_selections_pictures", ["irb_selection_id"], name: "index_irb_selections_pictures_on_irb_selection_id", using: :btree

  create_table "one_offspring_pictures", force: :cascade do |t|
    t.integer  "one_offspring_id",     limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "one_offspring_pictures", ["one_offspring_id"], name: "index_one_offspring_pictures_on_one_offspring_id", using: :btree

  create_table "one_offsprings", force: :cascade do |t|
    t.integer  "germination_id", limit: 4
    t.integer  "individual",     limit: 4,                           null: false
    t.integer  "color_id",       limit: 4
    t.string   "status",         limit: 255
    t.decimal  "headSize",                   precision: 5, scale: 2
    t.integer  "flowering",      limit: 4
    t.integer  "numPetals",      limit: 4
    t.string   "form",           limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "one_offsprings", ["color_id"], name: "index_one_offsprings_on_color_id", using: :btree
  add_index "one_offsprings", ["germination_id"], name: "fk_rails_347cbf9f34", using: :btree

  create_table "seeds", force: :cascade do |t|
    t.integer  "crossing_id",    limit: 4
    t.date     "sowDate",                                            null: false
    t.string   "origin",         limit: 255
    t.integer  "numSeeds",       limit: 4
    t.decimal  "totalWeight",                precision: 5, scale: 2
    t.integer  "week",           limit: 4
    t.string   "hydratation",    limit: 255
    t.string   "status",         limit: 255
    t.date     "dateOut"
    t.string   "germination",    limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "codeCrossName",  limit: 255
    t.string   "codeCross",      limit: 255
    t.integer  "totalCode",      limit: 4
    t.integer  "totalNumRepeat", limit: 4
  end

  add_index "seeds", ["crossing_id"], name: "fk_rails_e30e334158", using: :btree

  create_table "spek_selections", force: :cascade do |t|
    t.string   "code",         limit: 255,                           null: false
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

  create_table "spek_selections_pictures", force: :cascade do |t|
    t.integer  "spek_selection_id",    limit: 4
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "spek_selections_pictures", ["spek_selection_id"], name: "index_spek_selections_pictures_on_spek_selection_id", using: :btree

  create_table "three_offspring_pictures", force: :cascade do |t|
    t.integer  "three_offspring_id",   limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "three_offspring_pictures", ["three_offspring_id"], name: "index_three_offspring_pictures_on_three_offspring_id", using: :btree

  create_table "three_offsprings", force: :cascade do |t|
    t.integer  "two_offspring_id", limit: 4
    t.string   "color",            limit: 255
    t.string   "status",           limit: 255
    t.decimal  "headSize",                     precision: 5, scale: 2
    t.integer  "flowering",        limit: 4
    t.integer  "numPetals",        limit: 4
    t.string   "form",             limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  add_index "three_offsprings", ["two_offspring_id"], name: "fk_rails_780913f863", using: :btree

  create_table "two_offspring_pictures", force: :cascade do |t|
    t.integer  "two_offspring_id",     limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "two_offspring_pictures", ["two_offspring_id"], name: "index_two_offspring_pictures_on_two_offspring_id", using: :btree

  create_table "two_offsprings", force: :cascade do |t|
    t.integer  "one_offspring_id", limit: 4
    t.string   "color",            limit: 255
    t.string   "status",           limit: 255
    t.decimal  "headSize",                     precision: 5, scale: 2
    t.integer  "flowering",        limit: 4
    t.integer  "numPetals",        limit: 4
    t.string   "form",             limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  add_index "two_offsprings", ["one_offspring_id"], name: "fk_rails_87f1bea580", using: :btree

  add_foreign_key "crossings", "genetic_banks", column: "father_id", name: "fk_father_id"
  add_foreign_key "crossings", "genetic_banks", column: "mother_id", name: "fk_mother_id"
  add_foreign_key "genetic_banks", "colors"
  add_foreign_key "germinations", "seeds"
  add_foreign_key "irb_selections", "three_offsprings"
  add_foreign_key "irb_selections_pictures", "irb_selections"
  add_foreign_key "one_offspring_pictures", "one_offsprings"
  add_foreign_key "one_offsprings", "colors"
  add_foreign_key "one_offsprings", "germinations"
  add_foreign_key "seeds", "crossings"
  add_foreign_key "spek_selections", "colors"
  add_foreign_key "spek_selections_pictures", "spek_selections"
  add_foreign_key "three_offspring_pictures", "three_offsprings"
  add_foreign_key "three_offsprings", "two_offsprings"
  add_foreign_key "two_offspring_pictures", "two_offsprings"
  add_foreign_key "two_offsprings", "one_offsprings"
end
