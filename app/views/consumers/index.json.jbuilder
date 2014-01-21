json.array!(@consumers) do |consumer|
  json.extract! consumer, :name
  json.url consumer_url(consumer, format: :json)
end
