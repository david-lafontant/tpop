json.extract! business, :id, :business_name, :first_name, :last_name, :phone, :adress1, :adress2, :city, :zipcode, :state, :country, :description, :user_id, :created_at, :updated_at
json.url business_url(business, format: :json)
json.description business.description.to_s
