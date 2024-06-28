json.extract! meta_financeira, :id, :nome, :descricao, :valor, :prazo, :user_id, :created_at, :updated_at
json.url meta_financeira_url(meta_financeira, format: :json)
