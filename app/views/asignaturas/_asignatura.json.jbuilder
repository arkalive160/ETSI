json.extract! asignatura, :id, :nombre_asignatura, :contenido, :horas_asignatura, :created_at, :updated_at
json.url asignatura_url(asignatura, format: :json)