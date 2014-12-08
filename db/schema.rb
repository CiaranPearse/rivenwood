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

ActiveRecord::Schema.define(version: 20141208203146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "image"
    t.string   "slug"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", using: :btree

  create_table "categories_recipes", force: true do |t|
    t.integer "category_id"
    t.integer "recipe_id"
  end

  create_table "cusines", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "cusines", ["slug"], name: "index_cusines_on_slug", using: :btree

  create_table "cusines_recipes", force: true do |t|
    t.integer "cusine_id"
    t.integer "recipe_id"
  end

  create_table "diets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "diets", ["slug"], name: "index_diets_on_slug", using: :btree

  create_table "diets_recipes", force: true do |t|
    t.integer "diet_id"
    t.integer "recipe_id"
  end

  create_table "eases", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "eases", ["slug"], name: "index_eases_on_slug", using: :btree

  create_table "identities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
  end

  create_table "occasions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "icon"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "occasions", ["slug"], name: "index_occasions_on_slug", using: :btree

  create_table "occasions_recipes", force: true do |t|
    t.integer "occasion_id"
    t.integer "recipe_id"
  end

  create_table "publishers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "logo"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "titlexpath"
    t.string   "titlecss"
    t.string   "titleregex"
    t.string   "descriptionxpath"
    t.string   "descriptioncss"
    t.string   "descriptionregex"
    t.string   "imagexpath"
    t.string   "imagecss"
    t.string   "imageregex"
    t.string   "imagecreditxpath"
    t.string   "imagecreditcss"
    t.string   "imagecreditregex"
    t.string   "yeildxpath"
    t.string   "yeildcss"
    t.string   "yeildregex"
    t.string   "prepxpath"
    t.string   "prepcss"
    t.string   "prepregex"
    t.string   "cookxpath"
    t.string   "cookcss"
    t.string   "cookregex"
    t.string   "totalxpath"
    t.string   "totalcss"
    t.string   "totalregex"
    t.string   "ingredientsxpath"
    t.string   "ingredientscss"
    t.string   "ingredientsregex"
    t.string   "dietxpath"
    t.string   "dietcss"
    t.string   "dietregex"
    t.string   "coursexpath"
    t.string   "coursecss"
    t.string   "courseregex"
    t.string   "easexpath"
    t.string   "easecss"
    t.string   "easeregex"
    t.string   "categoriesxpath"
    t.string   "categoriescss"
    t.string   "categoriesregex"
    t.string   "tagsxpath"
    t.string   "tagscss"
    t.string   "tagsregex"
    t.string   "ratingxpath"
    t.string   "ratingcss"
    t.string   "ratingregex"
    t.string   "commentnumxpath"
    t.string   "commentnumcss"
    t.string   "commentnumregex"
    t.string   "facebookxpath"
    t.string   "facebookcss"
    t.string   "facebookregex"
    t.string   "twitterxpath"
    t.string   "twittercss"
    t.string   "twitterregex"
    t.string   "pinxpath"
    t.string   "pincss"
    t.string   "pinregex"
    t.string   "stumblexpath"
    t.string   "stumblecss"
    t.string   "stumbleregex"
    t.string   "gxpath"
    t.string   "gcss"
    t.string   "gregex"
    t.string   "publisherdatexpath"
    t.string   "publisherdatecss"
    t.string   "publisherdateregex"
    t.string   "authorxpath"
    t.string   "authorcss"
    t.string   "authorregex"
    t.text     "sources"
  end

  add_index "publishers", ["slug"], name: "index_publishers_on_slug", using: :btree

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "publisher_id"
    t.integer  "ease_id"
    t.string   "slug"
    t.string   "image"
    t.text     "ingredients"
    t.string   "imagepath"
    t.string   "imagecredit"
    t.string   "yeild"
    t.string   "preptime"
    t.string   "cooktime"
    t.string   "totaltime"
    t.integer  "rating"
    t.integer  "commentnumber"
    t.integer  "flikes"
    t.integer  "tlikes"
    t.integer  "plikes"
    t.integer  "slikes"
    t.integer  "glikes"
    t.string   "pubdate"
    t.string   "author"
  end

  add_index "recipes", ["slug"], name: "index_recipes_on_slug", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "real_name"
    t.string   "age"
    t.string   "gender"
    t.string   "language"
    t.string   "location"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.boolean  "vote",          default: false, null: false
    t.integer  "voteable_id",                   null: false
    t.string   "voteable_type",                 null: false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["voteable_id", "voteable_type"], name: "index_votes_on_voteable_id_and_voteable_type", using: :btree
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], name: "fk_one_vote_per_user_per_entity", unique: true, using: :btree
  add_index "votes", ["voter_id", "voter_type"], name: "index_votes_on_voter_id_and_voter_type", using: :btree

end
