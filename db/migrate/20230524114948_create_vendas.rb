class CreateVendas < ActiveRecord::Migration[6.1]
  def change
    create_table :vendas do |t|
      t.date :data
      t.float :total
      t.float :total_pagar

      t.timestamps
    end
  end
end
