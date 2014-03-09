json.array!(@entries) do |entry|
  json.extract! entry, :name, :date, :memory
  json.url entry_url(entry, format: :json)
end