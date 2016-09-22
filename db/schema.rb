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

ActiveRecord::Schema.define(version: 20160922014131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activos", force: :cascade do |t|
    t.date     "fecha_ingreso"
    t.integer  "codigo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "asignaturas", force: :cascade do |t|
    t.string   "nombre_asignatura"
    t.text     "contenido"
    t.integer  "horas_asignatura"
    t.integer  "componente_teorico_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["componente_teorico_id"], name: "index_asignaturas_on_componente_teorico_id", using: :btree
  end

  create_table "asignaturas_materials", id: false, force: :cascade do |t|
    t.integer "asignatura_id"
    t.integer "material_id"
    t.index ["asignatura_id"], name: "index_asignaturas_materials_on_asignatura_id", using: :btree
    t.index ["material_id"], name: "index_asignaturas_materials_on_material_id", using: :btree
  end

  create_table "componente_practicos", force: :cascade do |t|
    t.string   "nombre_practico"
    t.integer  "total_horas"
    t.integer  "programa_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["programa_id"], name: "index_componente_practicos_on_programa_id", using: :btree
  end

  create_table "componente_teoricos", force: :cascade do |t|
    t.string   "nombre_teorico"
    t.integer  "total_horas"
    t.integer  "programa_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["programa_id"], name: "index_componente_teoricos_on_programa_id", using: :btree
  end

  create_table "egresados", force: :cascade do |t|
    t.boolean  "es_empleado"
    t.string   "caracter_empleo"
    t.date     "fecha_egreso"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "estudiante_activos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "genero"
    t.integer  "edad"
    t.date     "fecha_nacimiento"
    t.integer  "numero_identificacion"
    t.string   "grupo_etnico"
    t.string   "nivel_escolaridad"
    t.bigint   "codigo_estudiante"
    t.date     "fecha_ingreso"
    t.integer  "programa_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["programa_id"], name: "index_estudiante_activos_on_programa_id", using: :btree
  end

  create_table "estudiante_egresados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "genero"
    t.integer  "edad"
    t.date     "fecha_nacimiento"
    t.integer  "numero_identificacion"
    t.string   "grupo_etnico"
    t.string   "nivel_escolaridad"
    t.boolean  "es_empleado"
    t.string   "caracter_empleo"
    t.date     "fecha_egreso"
    t.integer  "programa_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["programa_id"], name: "index_estudiante_egresados_on_programa_id", using: :btree
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "numero_identificacion"
    t.string   "nombre"
    t.string   "apellido"
    t.boolean  "genero"
    t.integer  "edad"
    t.date     "fecha_nacimiento"
    t.string   "grupo_etnico"
    t.string   "nivel_escolaridad"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "instalacions", force: :cascade do |t|
    t.integer  "programa_id"
    t.string   "aulas_fisico_espacial"
    t.string   "talleres_fisico_espacial"
    t.string   "aulas_mobiliario"
    t.string   "talleres_mobiliario"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["programa_id"], name: "index_instalacions_on_programa_id", using: :btree
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
    t.integer  "componente_practico_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["componente_practico_id"], name: "index_modulos_on_componente_practico_id", using: :btree
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
    t.string   "titulo_otorga"
    t.integer  "tiempo_formacion"
    t.string   "familia_profesional"
    t.integer  "taller_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["taller_id"], name: "index_programas_on_taller_id", using: :btree
  end

  create_table "tallers", force: :cascade do |t|
    t.string   "nombre_proyecto"
    t.string   "inst_contraparte"
    t.string   "responsable"
    t.integer  "telefono"
    t.integer  "fax"
    t.string   "email"
    t.integer  "locacion_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["locacion_id"], name: "index_tallers_on_locacion_id", using: :btree
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

  create_table "unidads_materials", id: false, force: :cascade do |t|
    t.integer "unidad_id"
    t.integer "material_id"
    t.index ["material_id"], name: "index_unidads_materials_on_material_id", using: :btree
    t.index ["unidad_id"], name: "index_unidads_materials_on_unidad_id", using: :btree
  end

end
