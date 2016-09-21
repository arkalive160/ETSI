json.extract! procedimiento, :id, :titulo, :descripcion, :imagen, :created_at, :updated_at
json.url procedimiento_url(procedimiento, format: :json)