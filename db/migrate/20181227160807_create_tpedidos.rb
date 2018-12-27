class CreateTpedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :tpedidos do |t|
      t.string :tipopedido

      t.timestamps
    end
  end
end
