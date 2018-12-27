class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.string :vehiculo
      t.string :placa

      t.timestamps
    end
  end
end
