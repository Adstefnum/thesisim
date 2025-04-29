require "test_helper"

class ChatHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat_history = chat_histories(:one)
  end

  test "should get index" do
    get chat_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_chat_history_url
    assert_response :success
  end

  test "should create chat_history" do
    assert_difference("ChatHistory.count") do
      post chat_histories_url, params: { chat_history: { chat_session_id: @chat_history.chat_session_id, content: @chat_history.content, reply_to_id: @chat_history.reply_to_id } }
    end

    assert_redirected_to chat_history_url(ChatHistory.last)
  end

  test "should show chat_history" do
    get chat_history_url(@chat_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_chat_history_url(@chat_history)
    assert_response :success
  end

  test "should update chat_history" do
    patch chat_history_url(@chat_history), params: { chat_history: { chat_session_id: @chat_history.chat_session_id, content: @chat_history.content, reply_to_id: @chat_history.reply_to_id } }
    assert_redirected_to chat_history_url(@chat_history)
  end

  test "should destroy chat_history" do
    assert_difference("ChatHistory.count", -1) do
      delete chat_history_url(@chat_history)
    end

    assert_redirected_to chat_histories_url
  end
end
