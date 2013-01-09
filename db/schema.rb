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

ActiveRecord::Schema.define(:version => 20121214045107) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.string   "other_state"
    t.string   "zipcode"
    t.integer  "country_id"
    t.text     "description"
    t.boolean  "user_favorite"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "company_categorizations", :force => true do |t|
    t.integer  "company_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "company_category_return_policies", :force => true do |t|
    t.integer  "company_id"
    t.integer  "return_category_id"
    t.float    "restocking_fee_precentage"
    t.date     "holiday_purchase_date_from"
    t.date     "holiday_purchase_date_to"
    t.date     "holiday_return_date"
    t.integer  "return_duration"
    t.integer  "return_duration_type_id"
    t.integer  "exchange_duration"
    t.integer  "exchange_duration_type_id"
    t.boolean  "rma_required"
    t.boolean  "open_used_returnable"
    t.text     "restrictions"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "company_contacts", :force => true do |t|
    t.integer  "company_id"
    t.string   "contact_type"
    t.string   "contact_value"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "company_countries", :force => true do |t|
    t.integer  "company_id"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "company_items", :force => true do |t|
    t.integer  "company_id"
    t.integer  "item_id"
    t.string   "sku"
    t.float    "price"
    t.string   "url"
    t.integer  "company_category_return_policy_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "company_return_policies", :force => true do |t|
    t.integer  "company_id"
    t.text     "return_policy"
    t.string   "return_policy_url"
    t.text     "return_policy_faq"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "company_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "rank"
    t.boolean  "is_obsolete"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "duration_frequencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exchange_duration_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_categorizations", :force => true do |t|
    t.integer  "item_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "short_description"
    t.string   "upc"
    t.text     "full_description"
    t.text     "features"
    t.integer  "make_id"
    t.string   "model_name"
    t.decimal  "list_price",         :precision => 8, :scale => 2
    t.date     "release_date"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "mail_in_rebate_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "makes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "name"
    t.float    "protection_duration"
    t.integer  "duration_frequency_id"
    t.float    "protection_limit"
    t.boolean  "purchase_protection"
    t.boolean  "stolen"
    t.boolean  "lost"
    t.boolean  "water_damaged"
    t.boolean  "return_protection"
    t.boolean  "warranty_protection"
    t.float    "warranty_duration"
    t.float    "per_item_limit"
    t.boolean  "wordwide"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "short_description"
    t.string   "upc"
    t.text     "full_description"
    t.text     "features"
    t.integer  "make_id"
    t.string   "model_name"
    t.float    "list_price"
    t.date     "release_date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "purchase_feedbacks", :force => true do |t|
    t.integer  "purchase_id"
    t.integer  "shopping_experience_rating"
    t.integer  "shop_again_in_next_6_month"
    t.integer  "recommends_to_friend"
    t.text     "feedback_improvement"
    t.integer  "company_feedback_rating_question_id"
    t.text     "company_feedback_answer_comments"
    t.integer  "company_feedback_answer"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "purchase_item_feedbacks", :force => true do |t|
    t.integer  "purchase_item_id"
    t.integer  "item_rating"
    t.integer  "buy_again_in_next_6_month"
    t.integer  "recommends_to_friend"
    t.text     "feedback_improvement"
    t.integer  "item_feedback_rating_question_id"
    t.text     "item_feedback_answer_comments"
    t.integer  "item_feedback_answer"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "purchase_item_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchase_items", :force => true do |t|
    t.integer  "item_id"
    t.integer  "purchase_id"
    t.string   "serial_number"
    t.float    "quantity"
    t.decimal  "price",                     :precision => 8, :scale => 2
    t.decimal  "tax",                       :precision => 8, :scale => 2
    t.decimal  "shipping",                  :precision => 8, :scale => 2
    t.decimal  "other_cost",                :precision => 8, :scale => 2
    t.decimal  "discount",                  :precision => 8, :scale => 2
    t.decimal  "total",                     :precision => 8, :scale => 2
    t.date     "allowed_return_date"
    t.date     "protection_date"
    t.integer  "purchase_item_status_id"
    t.date     "purchase_item_status_date"
    t.integer  "user_id"
    t.boolean  "tax_deductable"
    t.boolean  "hsa_eligible"
    t.text     "notes"
    t.integer  "item_feedback_rating_id"
    t.text     "item_feedback"
    t.datetime "feedback_date"
    t.integer  "visibility_id"
    t.integer  "store_id"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
  end

  create_table "purchase_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchases", :force => true do |t|
    t.string   "name"
    t.integer  "store_id"
    t.datetime "purchase_date"
    t.integer  "payment_method_id"
    t.integer  "user_id"
    t.string   "order_number"
    t.integer  "merchant_type_id"
    t.integer  "purchase_feedback_id"
    t.integer  "store_feedback_id"
    t.decimal  "subtotal",             :precision => 8, :scale => 2
    t.decimal  "discount",             :precision => 8, :scale => 2
    t.decimal  "tax",                  :precision => 8, :scale => 2
    t.decimal  "shipping",             :precision => 8, :scale => 2
    t.decimal  "other_charges",        :precision => 8, :scale => 2
    t.decimal  "total",                :precision => 8, :scale => 2
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "receipt_file_name"
    t.string   "receipt_content_type"
    t.integer  "receipt_file_size"
    t.datetime "receipt_updated_at"
  end

  create_table "relationship_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "return_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "return_duration_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "state_code"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "store_return_categories", :force => true do |t|
    t.string   "name"
    t.integer  "return_category_id"
    t.boolean  "refund_allowed"
    t.integer  "return_duration"
    t.integer  "duration_frequency_id"
    t.integer  "store_id"
    t.boolean  "exchange_allowed"
    t.boolean  "store_credit"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "store_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.integer  "country_id"
    t.string   "other_state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "store_url"
    t.text     "description"
    t.float    "rating"
    t.string   "fax"
    t.string   "email"
    t.integer  "store_type_id"
    t.string   "store_number"
    t.boolean  "user_favorite"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "user_item_relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "relationship_type_id"
    t.datetime "relationship_date"
    t.integer  "rating"
    t.text     "comments"
    t.integer  "visibility_id"
    t.text     "private_comments"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "visibilities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
