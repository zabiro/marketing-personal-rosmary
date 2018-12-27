class Pedido < ApplicationRecord

    has_many :solicitud
    belongs_to :tpedido
end
