require "application_system_test_case"

class SermonsTest < ApplicationSystemTestCase
  setup do
    @sermon = sermons(:one)
  end

  test "visiting the index" do
    visit sermons_url
    assert_selector "h1", text: "Sermons"
  end

  test "creating a Sermon" do
    visit sermons_url
    click_on "New Sermon"

    fill_in "Date", with: @sermon.date
    fill_in "Speaker", with: @sermon.speaker
    fill_in "Title", with: @sermon.title
    click_on "Create Sermon"

    assert_text "Sermon was successfully created"
    click_on "Back"
  end

  test "updating a Sermon" do
    visit sermons_url
    click_on "Edit", match: :first

    fill_in "Date", with: @sermon.date
    fill_in "Speaker", with: @sermon.speaker
    fill_in "Title", with: @sermon.title
    click_on "Update Sermon"

    assert_text "Sermon was successfully updated"
    click_on "Back"
  end

  test "destroying a Sermon" do
    visit sermons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sermon was successfully destroyed"
  end
end
