class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :Nombre
      t.string :Direccion
      t.string :telefono
      t.string :campana
      t.string :placa
      t.string :zona
      t.string :ncaja

      t.timestamps
    end
  end
end
