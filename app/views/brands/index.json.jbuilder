json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :history, :ca
  json.url brand_url(brand, format: :json)
end
