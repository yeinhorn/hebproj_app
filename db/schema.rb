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

ActiveRecord::Schema.define(version: 20130905183129) do

  create_table "examples", force: true do |t|
    t.string   "hebrew_sentence"
    t.string   "ivrit_sentence"
    t.string   "english_sentence"
    t.string   "french_sentence"
    t.string   "spanish_sentence"
    t.string   "russian_sentence"
    t.string   "portugese_sentence"
    t.string   "dutch_sentence"
    t.string   "german_sentence"
    t.string   "hebrew_note"
    t.string   "ivrit_note"
    t.string   "english_note"
    t.string   "french_note"
    t.string   "spanish_note"
    t.string   "russian_note"
    t.string   "portugese_note"
    t.string   "dutch_note"
    t.string   "german_note"
    t.integer  "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.string   "name"
    t.integer  "class_num"
    t.integer  "sub_class_num"
    t.integer  "lesson_num"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.string   "hebrew"
    t.string   "ivrit"
    t.string   "english"
    t.string   "french"
    t.string   "spanish"
    t.string   "russian"
    t.string   "portugese"
    t.string   "dutch"
    t.string   "german"
    t.boolean  "verb"
    t.string   "shoresh"
    t.string   "shoresh_type"
    t.boolean  "main_word"
    t.integer  "order_num"
    t.integer  "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
