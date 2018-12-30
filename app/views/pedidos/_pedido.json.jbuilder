json.extract! pedido, :id,:nfactura, :Nombre, :Direccion, :telefono, :campana, :placa, :zona, :ncaja, :created_at, :updated_at, :tpedido_id, :estado_id
json.url pedido_url(pedido, format: :json)
