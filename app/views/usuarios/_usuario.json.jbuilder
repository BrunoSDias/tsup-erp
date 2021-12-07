json.extract! usuario, :id, :nome, :data_nascimento, :telefone, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
