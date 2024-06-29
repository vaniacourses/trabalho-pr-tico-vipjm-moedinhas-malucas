json.extract! transacao, :id, :tipo, :valor, :dataHora, :categoria, :user_id, :account_id, :created_at, :updated_at
json.url transacao_url(transacao, format: :json)
