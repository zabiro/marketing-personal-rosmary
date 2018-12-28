class Estado < ApplicationRecord
    has_many :pedido
    accepts_nested_attributes_for :pedido
end
