class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :telefone
      t.string :cnpj_cpf
      t.string :email
      t.string :cep
      t.string :logradouro

      t.timestamps
    end
  end
end
