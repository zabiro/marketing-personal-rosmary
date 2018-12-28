# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181228044027) do

  create_table "estados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "actualizarestado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Nombre"
    t.string "Direccion"
    t.string "telefono"
    t.string "campana"
    t.string "placa"
    t.string "zona"
    t.string "ncaja"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tpedido_id"
    t.bigint "estado_id"
    t.index ["estado_id"], name: "index_pedidos_on_estado_id"
    t.index ["tpedido_id"], name: "index_pedidos_on_tpedido_id"
  end

  create_table "solicituds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "pedido_id"
    t.index ["pedido_id"], name: "index_solicituds_on_pedido_id"
    t.index ["user_id"], name: "index_solicituds_on_user_id"
  end

  create_table "tpedidos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "tipopedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "admin_role", default: false
    t.boolean "user_role", default: true
    t.string "nombre"
    t.string "apellido"
    t.datetime "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "marca"
    t.string "vehiculo"
    t.string "placa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_vehiculos_on_user_id"
  end

  add_foreign_key "pedidos", "estados"
  add_foreign_key "pedidos", "tpedidos"
  add_foreign_key "solicituds", "pedidos"
  add_foreign_key "solicituds", "users"
  add_foreign_key "vehiculos", "users"
end
