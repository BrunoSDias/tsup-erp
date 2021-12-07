json.extract! filme, :id, :nome, :classificacao, :nota, :created_at, :updated_at
json.url filme_url(filme, format: :json)
