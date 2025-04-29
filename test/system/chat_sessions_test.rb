require "application_system_test_case"

class ChatSessionsTest < ApplicationSystemTestCase
  setup do
    @chat_session = chat_sessions(:one)
  end

  test "visiting the index" do
    visit chat_sessions_url
    assert_selector "h1", text: "Chat sessions"
  end

  test "should create chat session" do
    visit chat_sessions_url
    click_on "New chat session"

    fill_in "Title", with: @chat_session.title
    fill_in "User", with: @chat_session.user_id
    click_on "Create Chat session"

    assert_text "Chat session was successfully created"
    click_on "Back"
  end

  test "should update Chat session" do
    visit chat_session_url(@chat_session)
    click_on "Edit this chat session", match: :first

    fill_in "Title", with: @chat_session.title
    fill_in "User", with: @chat_session.user_id
    click_on "Update Chat session"

    assert_text "Chat session was successfully updated"
    click_on "Back"
  end

  test "should destroy Chat session" do
    visit chat_session_url(@chat_session)
    click_on "Destroy this chat session", match: :first

    assert_text "Chat session was successfully destroyed"
  end
end
