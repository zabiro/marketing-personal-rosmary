class AddUserIdToSolicituds < ActiveRecord::Migration[5.1]
  def change
    add_reference :solicituds, :user, foreign_key: true, index: true
  end
end
