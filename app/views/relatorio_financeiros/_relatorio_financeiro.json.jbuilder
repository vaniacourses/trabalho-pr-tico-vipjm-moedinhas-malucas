json.extract! relatorio_financeiro, :id, :transacoes_id, :created_at, :updated_at
json.url relatorio_financeiro_url(relatorio_financeiro, format: :json)
