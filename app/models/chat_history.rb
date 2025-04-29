class ChatHistory < ApplicationRecord
  belongs_to :chat_session
  belongs_to :reply_to
end
