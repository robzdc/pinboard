json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :description, :status, :user_id, :category_id
  json.url pin_url(pin, format: :json)
end
