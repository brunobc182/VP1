json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :Nome, :Descricao, :Casa, :Mascote, :Rival, :Tecnico, :Cidade, :Estado
  json.url cadastro_url(cadastro, format: :json)
end
