json.array!(@products) do |product|
  json.extract! product, :id, :nameproduct, :firmwareversion, :descriptionproduct, :active, :ticket_id
  json.url product_url(product, format: :json)
end
