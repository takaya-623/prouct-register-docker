json.extract! product, :id, :name, :vendor, :created_at, :updated_at
json.url product_url(product, format: :json)
