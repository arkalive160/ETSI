json.extract! programa, :id, :nombre_programa, :tipo_educacion, :titulo_otorga, :tiempo_formacion, :familia_profesional, :created_at, :updated_at
json.url programa_url(programa, format: :json)