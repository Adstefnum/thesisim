json.extract! attachment, :id, :chat_session_id, :file_url, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)
