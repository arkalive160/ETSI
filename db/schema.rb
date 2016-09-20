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

ActiveRecord::Schema.define(version: 20160920210404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instalacions", force: :cascade do |t|
    t.integer  "instalacion_id"
    t.string   "aulas_fisico_espacial"
    t.string   "talleres_fisico_espacial"
    t.string   "aulas_mobiliario"
    t.string   "talleres_mobiliario"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["instalacion_id"], name: "index_instalacions_on_instalacion_id", using: :btree
  end

  create_table "programas", force: :cascade do |t|
    t.string   "nombre_programa"
    t.boolean  "tipo_educacion"
    t.string   "titulo_ortorga"
    t.integer  "tiempo_formacion"
    t.string   "familia_profesional"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
