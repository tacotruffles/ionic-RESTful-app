json.array!(@cts) do |ct|
  json.extract! ct, :id, :title, :name, :description, :url
  json.url ct_url(ct, format: :json)
end
