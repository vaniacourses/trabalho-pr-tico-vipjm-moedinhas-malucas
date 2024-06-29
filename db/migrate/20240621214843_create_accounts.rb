class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :nomeConta
      t.float :saldo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
