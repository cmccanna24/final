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

ActiveRecord::Schema.define(version: 0) do

  create_table "albums", force: :cascade do |t|
    t.integer "artist_id"
    t.string  "title"
    t.integer "rating"
    t.integer "year"
    t.string  "album_cover_url"
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id"

  create_table "artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "album_id"
    t.integer "rating"
    t.string  "desc"
    t.integer "user_id"
  end

  add_index "reviews", ["album_id"], name: "index_reviews_on_album_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "tracks", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "album_id"
    t.string  "name"
  end

  add_index "tracks", ["album_id"], name: "index_tracks_on_album_id"
  add_index "tracks", ["artist_id"], name: "index_tracks_on_artist_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
