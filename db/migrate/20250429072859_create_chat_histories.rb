class CreateChatHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :chat_histories do |t|
      t.references :chat_session, null: false, foreign_key: true
      t.text :content
      t.references :reply_to, foreign_key: { to_table: :chat_histories }


      t.timestamps
    end
  end
end
