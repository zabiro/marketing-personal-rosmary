class AddUserIdToPedidos < ActiveRecord::Migration[5.1]
  def change
    add_reference :pedidos, :tpedido, foreign_key: true
  end
end
