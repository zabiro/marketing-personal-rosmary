class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :nfactura
      t.string :nombre
      t.string :campana
      t.string :zona
      t.string :nidentificacion
      t.string :telefono
      t.string :tipodepedido

      t.timestamps
    end
  end
end
