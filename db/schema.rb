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

ActiveRecord::Schema.define(version: 20140407123059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "building"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string "snippet"
    t.string "thumbnail"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_posts", id: false, force: true do |t|
    t.integer "post_id",     null: false
    t.integer "category_id", null: false
  end

  create_table "comment_locations", force: true do |t|
    t.integer  "para_start_offset"
    t.integer  "para_end_offset"
    t.integer  "line_start_offset"
    t.integer  "line_end_offset"
    t.integer  "word_start_offset"
    t.integer  "word_end_offset"
    t.integer  "image_x_offset"
    t.integer  "image_y_offset"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer "parent_post_id"
    t.integer "comment_location_id"
  end

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.decimal  "longitude",  precision: 9, scale: 6
    t.decimal  "latitude",   precision: 9, scale: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "address_id"
  end

  add_index "destinations", ["address_id"], name: "index_destinations_on_address_id", using: :btree

  create_table "destinations_posts", id: false, force: true do |t|
    t.integer "post_id",        null: false
    t.integer "destination_id", null: false
  end

  create_table "guides", force: true do |t|
  end

  create_table "posts", force: true do |t|
    t.integer  "as_post_id"
    t.string   "as_post_type"
    t.string   "title"
    t.text     "content"
    t.decimal  "score",        precision: 5, scale: 1
    t.integer  "view_count"
    t.datetime "publish_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "posts_tags", id: false, force: true do |t|
    t.integer "post_id", null: false
    t.integer "tag_id",  null: false
  end

  create_table "questions", force: true do |t|
    t.integer "accepted_answer_id"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "vote_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "vote_type_id"
    t.integer  "parent_post_id"
  end

  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree
  add_index "votes", ["vote_type_id"], name: "index_votes_on_vote_type_id", using: :btree

end
