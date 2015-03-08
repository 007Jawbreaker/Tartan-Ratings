json.array!(@cafeteria) do |cafeterium|
  json.extract! cafeterium, :id, :item_name, :item_description, :item_price, :cafeteria_category_id
  json.url cafeterium_url(cafeterium, format: :json)
end
