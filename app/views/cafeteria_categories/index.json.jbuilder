json.array!(@cafeteria_categories) do |cafeteria_category|
  json.extract! cafeteria_category, :id, :name
  json.url cafeteria_category_url(cafeteria_category, format: :json)
end
