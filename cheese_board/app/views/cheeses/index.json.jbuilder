json.array!(@cheeses) do |cheese|
  json.extract! cheese, :id, :variety, :User_id
  json.url cheese_url(cheese, format: :json)
end
