json.extract! pedido, :id, :Nombre, :Direccion, :telefono, :campana, :placa, :zona, :ncaja, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
