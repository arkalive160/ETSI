json.extract! locacion, :id, :pais, :ciudad, :direccion, :created_at, :updated_at
json.url locacion_url(locacion, format: :json)