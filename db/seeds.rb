# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tpedido.create(tipopedido: "Normal")
Tpedido.create(tipopedido: "Premios")
users = User.create! :email => 'root@root.com', :password => 'password', :password_confirmation => 'password', :superadmin_role => 'true'

Estado.create(actualizarestado: "espera")
Estado.create(actualizarestado: "bodega")
Estado.create(actualizarestado: "transportista")
