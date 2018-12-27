class AddUserIdToSolicituds < ActiveRecord::Migration[5.1]
  def change
    add_reference :solicituds, :user, foreign_key: true
    add_reference :solicituds, :pedido, foreign_key: true
  end
end
