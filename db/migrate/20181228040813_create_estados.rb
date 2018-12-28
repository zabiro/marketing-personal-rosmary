class CreateEstados < ActiveRecord::Migration[5.1]
  def change
    create_table :estados do |t|
      t.string :actualizarestado

      t.timestamps
    end
  end
end
