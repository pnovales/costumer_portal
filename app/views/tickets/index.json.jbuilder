json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :description, :priority, :company, :status, :assigned_to, :contact, :user_id, :product_id
  json.url ticket_url(ticket, format: :json)
end
