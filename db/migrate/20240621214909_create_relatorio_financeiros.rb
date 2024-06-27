class CreateRelatorioFinanceiros < ActiveRecord::Migration[7.1]
  def change
    create_table :relatorio_financeiros do |t|
      t.references :transacoes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
