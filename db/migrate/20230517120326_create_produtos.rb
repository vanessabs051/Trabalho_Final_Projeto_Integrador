class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :quantidade
      t.date :validade
      t.float :preco
      t.string :marca
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
