class Solicitud < ApplicationRecord

    belongs_to :pedido
    belongs_to :user 
end
