json.array!(@mata_mata) do |mata_matum|
  json.extract! mata_matum, :id, :nome_camp, :modalidade, :competidores, 
  json.url mata_matum_url(mata_matum, format: :json)
end
