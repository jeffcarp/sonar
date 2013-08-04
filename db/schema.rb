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

ActiveRecord::Schema.define(:version => 20130721200010) do

  create_table "articles", :force => true do |t|
    t.text     "headline"
    t.text     "deck"
    t.integer  "department_id"
    t.integer  "issue_id"
    t.text     "copy"
    t.boolean  "public"
    t.text     "slug"
    t.boolean  "bigphoto"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "topic_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "outlet"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.boolean  "public"
    t.integer  "volume"
    t.integer  "edition"
    t.date     "publish_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
