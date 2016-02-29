json.array!(@distributors) do |distributor|
  json.extract! distributor, :id, :name, :url, :notes, :contact_name, :contact_email, :email, :phone_number, :image_url
  json.url distributor_url(distributor, format: :json)
end
