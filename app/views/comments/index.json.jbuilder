json.array!(@comments) do |comment|
  json.extract! comment, :id, :t.text, :
  json.url comment_url(comment, format: :json)
end
