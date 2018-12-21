class CreateCargas < ActiveRecord::Migration[5.1]
  def change
    create_table :cargas do |t|
      t.datetime :fecha
      t.string :placa
      t.string :campana

      t.timestamps
    end
  end
end
