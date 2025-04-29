require "application_system_test_case"

class ChatHistoriesTest < ApplicationSystemTestCase
  setup do
    @chat_history = chat_histories(:one)
  end

  test "visiting the index" do
    visit chat_histories_url
    assert_selector "h1", text: "Chat histories"
  end

  test "should create chat history" do
    visit chat_histories_url
    click_on "New chat history"

    fill_in "Chat session", with: @chat_history.chat_session_id
    fill_in "Content", with: @chat_history.content
    fill_in "Reply to", with: @chat_history.reply_to_id
    click_on "Create Chat history"

    assert_text "Chat history was successfully created"
    click_on "Back"
  end

  test "should update Chat history" do
    visit chat_history_url(@chat_history)
    click_on "Edit this chat history", match: :first

    fill_in "Chat session", with: @chat_history.chat_session_id
    fill_in "Content", with: @chat_history.content
    fill_in "Reply to", with: @chat_history.reply_to_id
    click_on "Update Chat history"

    assert_text "Chat history was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat history" do
    visit chat_history_url(@chat_history)
    click_on "Destroy this chat history", match: :first

    assert_text "Chat history was successfully destroyed"
  end
end
