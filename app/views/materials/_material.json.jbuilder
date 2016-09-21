json.extract! material, :id, :nombre, :descripcion, :cantidad, :precio_unitario, :precio_total, :tipo_material, :imagen, :created_at, :updated_at
json.url material_url(material, format: :json)