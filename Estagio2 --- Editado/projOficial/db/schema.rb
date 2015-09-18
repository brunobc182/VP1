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

ActiveRecord::Schema.define(version: 20150918034317) do

  create_table "cadastro_times", force: :cascade do |t|
    t.string   "Nome"
    t.text     "Descricao"
    t.string   "Casa"
    t.string   "Mascote"
    t.string   "Rival"
    t.string   "Tecnico"
    t.string   "Cidade"
    t.integer  "Estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cadastro_times", ["Estado_id"], name: "index_cadastro_times_on_Estado_id"

  create_table "cadastros", force: :cascade do |t|
    t.string   "Nome"
    t.text     "Descricao"
    t.string   "Casa"
    t.string   "Mascote"
    t.string   "Rival"
    t.string   "Tecnico"
    t.string   "Cidade"
    t.string   "Estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cdtms", force: :cascade do |t|
    t.string   "Nome"
    t.text     "Descricao"
    t.string   "Casa"
    t.string   "Mascote"
    t.string   "Rival"
    t.string   "Tecnico"
    t.string   "Cidade"
    t.integer  "Estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cdtms", ["Estado_id"], name: "index_cdtms_on_Estado_id"

end
