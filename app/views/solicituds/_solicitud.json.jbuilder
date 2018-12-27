json.extract! solicitud, :id, :fecha, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
