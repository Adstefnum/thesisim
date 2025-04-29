json.extract! chat_session, :id, :user_id, :title, :created_at, :updated_at
json.url chat_session_url(chat_session, format: :json)
