class Fornecedor < ApplicationRecord
    validates :nome, :email, :telefone, :cep, :logradouro, presence: true
end
