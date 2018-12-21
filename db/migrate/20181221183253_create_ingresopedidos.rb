class CreateIngresopedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :ingresopedidos do |t|
      t.string :Ndefactura

      t.timestamps
    end
  end
end
