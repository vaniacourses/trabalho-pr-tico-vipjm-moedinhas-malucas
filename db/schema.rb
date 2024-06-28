# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_28_011927) do
  create_table "accounts", force: :cascade do |t|
    t.float "saldo"
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_accounts_on_cliente_id"
  end

  create_table "meta_financeiras", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.float "valor"
    t.datetime "prazo"
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_meta_financeiras_on_cliente_id"
  end

  create_table "relatorio_financeiros", force: :cascade do |t|
    t.integer "transacoes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transacoes_id"], name: "index_relatorio_financeiros_on_transacoes_id"
  end

  create_table "transacaos", force: :cascade do |t|
    t.string "tipo"
    t.float "valor"
    t.datetime "dataHora"
    t.string "categoria"
    t.integer "cliente_id", null: false
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_transacaos_on_account_id"
    t.index ["cliente_id"], name: "index_transacaos_on_cliente_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "clientes"
  add_foreign_key "meta_financeiras", "clientes"
  add_foreign_key "relatorio_financeiros", "transacoes", column: "transacoes_id"
  add_foreign_key "transacaos", "accounts"
  add_foreign_key "transacaos", "clientes"
end
