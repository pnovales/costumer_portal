json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :descriptionticket, :priority, :company, :status, :assignedto, :contactname, :user_id
  json.url ticket_url(ticket, format: :json)
end
