class AddUserIdToVehiculos < ActiveRecord::Migration[5.1]
  def change
    add_reference :vehiculos, :user, foreign_key: true
  end
end
