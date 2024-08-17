json.extract! product, :id, :name, :description, :price, :poster, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
json.description product.description.to_s
json.poster url_for(product.poster)
