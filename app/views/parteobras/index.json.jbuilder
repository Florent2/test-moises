json.array!(@parteobras) do |parteobra|
  json.extract! parteobra, :nombre
  json.url parteobra_url(parteobra, format: :json)
end
