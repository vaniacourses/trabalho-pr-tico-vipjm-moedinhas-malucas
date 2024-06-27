class CreateTransacaos < ActiveRecord::Migration[7.1]
  def change
    create_table :transacaos do |t|
      t.string :tipo
      t.float :valor
      t.datetime :dataHora
      t.string :categoria
      t.references :cliente, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
