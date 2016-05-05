json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment_content, :user_id, :lect_id
  json.url comment_url(comment, format: :json)
end
