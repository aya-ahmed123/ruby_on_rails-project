json.array!(@lects) do |lect|
  json.extract! lect, :id, :title, :content, :attach, :user_id, :course_id
  json.url lect_url(lect, format: :json)
end
