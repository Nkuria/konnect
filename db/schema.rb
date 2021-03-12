# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_205_042_127) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'followings', force: :cascade do |t|
    t.integer 'follower_id'
    t.integer 'followed_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[followed_id follower_id], name: 'index_followings_on_followed_id_and_follower_id', unique: true
    t.index ['followed_id'], name: 'index_followings_on_followed_id'
    t.index ['follower_id'], name: 'index_followings_on_follower_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.text 'content'
    t.integer 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[user_id created_at], name: 'index_posts_on_user_id_and_created_at'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'Username'
    t.string 'Fullname'
    t.string 'Photo'
    t.string 'Coverimage'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
