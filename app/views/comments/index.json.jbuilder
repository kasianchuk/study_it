json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_name, :body, :post_id
  json.url comment_url(comment, format: :json)
end
