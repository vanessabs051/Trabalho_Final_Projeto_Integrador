class Venda < ApplicationRecord
    validates :data, :total, :total_pagar,  presence: true
end
