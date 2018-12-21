class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :nombre
      t.string :vehiculo
      t.string :placa
      t.string :cel

      t.timestamps
    end
  end
end
