json.extract! produto, :id, :nome, :quantidade, :validade, :preco, :marca, :fornecedor_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
