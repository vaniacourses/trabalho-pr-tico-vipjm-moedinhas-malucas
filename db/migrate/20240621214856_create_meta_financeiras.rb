class CreateMetaFinanceiras < ActiveRecord::Migration[7.1]
  def change
    create_table :meta_financeiras do |t|
      t.string :nome
      t.string :descricao
      t.float :valor
      t.datetime :prazo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
