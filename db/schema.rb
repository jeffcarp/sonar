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

ActiveRecord::Schema.define(:version => 20130906074051) do

  create_table "articles", :id => false, :force => true do |t|
    t.integer  "id",            :null => false
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

  create_table "articles_photos", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "photo_id"
  end

  add_index "articles_photos", ["article_id", "photo_id"], :name => "index_articles_photos_on_article_id_and_photo_id"

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

  create_table "people", :force => true do |t|
    t.text     "email"
    t.integer  "photo_id"
    t.string   "name"
    t.string   "slug"
    t.string   "position"
    t.integer  "year"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.text     "caption"
    t.text     "source"
    t.string   "extension"
    t.integer  "person_id"
    t.boolean  "public"
    t.date     "taken_on"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
