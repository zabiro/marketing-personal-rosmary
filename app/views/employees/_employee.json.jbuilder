json.extract! employee, :id, :nombre, :vehiculo, :placa, :cel, :created_at, :updated_at
json.url employee_url(employee, format: :json)
