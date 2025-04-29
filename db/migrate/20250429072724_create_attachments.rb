class CreateAttachments < ActiveRecord::Migration[8.0]
  def change
    create_table :attachments do |t|
      t.references :chat_session, null: false, foreign_key: true
      t.string :file_url

      t.timestamps
    end
  end
end
