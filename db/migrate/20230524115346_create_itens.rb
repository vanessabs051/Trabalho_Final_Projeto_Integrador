class CreateItens < ActiveRecord::Migration[6.1]
  def change
    create_table :itens do |t|
      t.float :preco_venda
      t.integer :quantidade
      t.float :valor_total
      t.references :produto, null: false, foreign_key: true
      t.references :venda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
