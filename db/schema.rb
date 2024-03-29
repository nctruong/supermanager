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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120907175020) do

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "author_id"
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "shorthand"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "coaches", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "club_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "coaches", ["club_id"], :name => "index_coaches_on_club_id"

  create_table "contestants", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "team_id"
    t.boolean  "is_admin",   :default => false
  end

  create_table "login_requests", :force => true do |t|
    t.datetime "expires_at"
    t.string   "validation_key"
    t.integer  "contestant_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "login_requests", ["contestant_id"], :name => "index_login_requests_on_contestant_id"

  create_table "players", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "club_id"
    t.string   "type"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "superteams", :force => true do |t|
    t.integer  "contestant_id"
    t.integer  "coach_id"
    t.integer  "bonus_player_id"
    t.integer  "goalkeeper_id"
    t.integer  "defender_a_id"
    t.integer  "defender_b_id"
    t.integer  "defender_c_id"
    t.integer  "defender_d_id"
    t.integer  "midfielder_a_id"
    t.integer  "midfielder_b_id"
    t.integer  "midfielder_c_id"
    t.integer  "forward_a_id"
    t.integer  "forward_b_id"
    t.integer  "forward_c_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "superteams", ["contestant_id"], :name => "index_superteams_on_contestant_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
