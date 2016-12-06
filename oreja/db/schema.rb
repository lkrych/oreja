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

ActiveRecord::Schema.define(version: 20161206230039) do

  create_table "episodes", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
    t.time     "duration"
    t.datetime "air_date"
    t.integer  "podcast_id"
    t.integer  "provider_id"
    t.index ["podcast_id"], name: "index_episodes_on_podcast_id"
    t.index ["provider_id"], name: "index_episodes_on_provider_id"
  end

  create_table "podcasts", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "genre"
    t.text     "summary"
    t.integer  "episodes_id"
    t.integer  "provider_id"
    t.index ["episodes_id"], name: "index_podcasts_on_episodes_id"
    t.index ["provider_id"], name: "index_podcasts_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
    t.datetime "first"
    t.integer  "podcasts_id"
    t.index ["podcasts_id"], name: "index_providers_on_podcasts_id"
  end

end
