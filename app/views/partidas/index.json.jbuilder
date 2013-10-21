json.array!(@partidas) do |partida|
  json.extract! partida, :diametro, :parteobra_id
  json.url partida_url(partida, format: :json)
end
