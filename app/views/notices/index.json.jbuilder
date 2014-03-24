json.array!(@notices) do |notice|
  json.extract! notice, :id, :title, :content, :visible
  json.url notice_url(notice, format: :json)
end
