require "application_system_test_case"

class AttachmentsTest < ApplicationSystemTestCase
  setup do
    @attachment = attachments(:one)
  end

  test "visiting the index" do
    visit attachments_url
    assert_selector "h1", text: "Attachments"
  end

  test "should create attachment" do
    visit attachments_url
    click_on "New attachment"

    fill_in "Chat session", with: @attachment.chat_session_id
    fill_in "File url", with: @attachment.file_url
    click_on "Create Attachment"

    assert_text "Attachment was successfully created"
    click_on "Back"
  end

  test "should update Attachment" do
    visit attachment_url(@attachment)
    click_on "Edit this attachment", match: :first

    fill_in "Chat session", with: @attachment.chat_session_id
    fill_in "File url", with: @attachment.file_url
    click_on "Update Attachment"

    assert_text "Attachment was successfully updated"
    click_on "Back"
  end

  test "should destroy Attachment" do
    visit attachment_url(@attachment)
    click_on "Destroy this attachment", match: :first

    assert_text "Attachment was successfully destroyed"
  end
end
