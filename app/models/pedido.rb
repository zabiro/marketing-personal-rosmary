class Pedido < ApplicationRecord

    has_many :solicitud
    belongs_to :tpedido
    belongs_to :estado, optional: true
   
end
