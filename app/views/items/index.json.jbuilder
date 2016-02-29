json.array!(@items) do |item|
  json.extract! item, :id, :name, :location, :compartment, :item_type, :package_type, :description, :quantity, :manufacturer, :distributor, :notes, :image_url, :manual_url
  json.url item_url(item, format: :json)
end
