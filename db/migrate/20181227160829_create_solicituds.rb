class CreateSolicituds < ActiveRecord::Migration[5.1]
  def change
    create_table :solicituds do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
