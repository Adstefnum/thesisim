json.extract! chat_history, :id, :chat_session_id, :content, :reply_to_id, :created_at, :updated_at
json.url chat_history_url(chat_history, format: :json)
