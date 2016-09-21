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

ActiveRecord::Schema.define(version: 20160921071600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignaturas", force: :cascade do |t|
    t.string   "nombre_asignatura"
    t.text     "contenido"
    t.integer  "horas_asignatura"
    t.integer  "componente_teorico_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["componente_teorico_id"], name: "index_asignaturas_on_componente_teorico_id", using: :btree
  end

  create_table "componente_practicos", force: :cascade do |t|
    t.string   "nombre_practico"
    t.integer  "total_horas"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "componente_teoricos", force: :cascade do |t|
    t.string   "nombre_teorico"
    t.integer  "total_horas"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

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

  create_table "locacions", force: :cascade do |t|
    t.string   "pais"
    t.string   "ciudad"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "cantidad"
    t.integer  "precio_unitario"
    t.integer  "precio_total"
    t.string   "tipo_material"
    t.string   "imagen"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "modulos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "horas_modulo"
    t.text     "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "procedimientos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.string   "imagen"
    t.integer  "componente_practico_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["componente_practico_id"], name: "index_procedimientos_on_componente_practico_id", using: :btree
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

  create_table "tallers", force: :cascade do |t|
    t.string   "nombre_proyecto"
    t.string   "inst_contraparte"
    t.string   "responsable"
    t.integer  "telefono"
    t.integer  "fax"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "unidads", force: :cascade do |t|
    t.string   "nombre_unidad"
    t.text     "competencias"
    t.integer  "horas_unidad"
    t.integer  "modulo_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["modulo_id"], name: "index_unidads_on_modulo_id", using: :btree
  end

end
