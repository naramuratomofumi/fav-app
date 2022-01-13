require "application_system_test_case"

class ProtosTest < ApplicationSystemTestCase
  setup do
    @proto = protos(:one)
  end

  test "visiting the index" do
    visit protos_url
    assert_selector "h1", text: "Protos"
  end

  test "creating a Proto" do
    visit protos_url
    click_on "New Proto"

    fill_in "Title", with: @proto.title
    fill_in "User", with: @proto.user_id
    click_on "Create Proto"

    assert_text "Proto was successfully created"
    click_on "Back"
  end

  test "updating a Proto" do
    visit protos_url
    click_on "Edit", match: :first

    fill_in "Title", with: @proto.title
    fill_in "User", with: @proto.user_id
    click_on "Update Proto"

    assert_text "Proto was successfully updated"
    click_on "Back"
  end

  test "destroying a Proto" do
    visit protos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proto was successfully destroyed"
  end
end
