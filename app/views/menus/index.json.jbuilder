json.array!(@menus) do |menu|
  json.extract! menu, :id, :item_id, :price
  json.url menu_url(menu, format: :json)
end
