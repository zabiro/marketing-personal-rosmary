json.extract! pedido, :id, :nfactura, :nombre, :campana, :zona, :nidentificacion, :telefono, :tipodepedido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
