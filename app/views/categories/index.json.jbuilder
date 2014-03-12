json.array!(@categories) do |category|
  json.extract! category, :id, :namecategory, :product_id
  json.url category_url(category, format: :json)
end
