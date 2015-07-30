json.array!(@links) do |link|
  json.extract! link, :id, :title, :summary, :url
  json.url link_url(link, format: :json)
end
