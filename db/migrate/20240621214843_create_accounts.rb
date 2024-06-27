class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.float :saldo
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
