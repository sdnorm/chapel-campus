require "application_system_test_case"

class SermonSectionsTest < ApplicationSystemTestCase
  setup do
    @sermon_section = sermon_sections(:one)
  end

  test "visiting the index" do
    visit sermon_sections_url
    assert_selector "h1", text: "Sermon Sections"
  end

  test "creating a Sermon section" do
    visit sermon_sections_url
    click_on "New Sermon Section"

    fill_in "Personal Note", with: @sermon_section.personal_note
    fill_in "Sermon", with: @sermon_section.sermon_id
    fill_in "Speaker Note", with: @sermon_section.speaker_note
    click_on "Create Sermon section"

    assert_text "Sermon section was successfully created"
    click_on "Back"
  end

  test "updating a Sermon section" do
    visit sermon_sections_url
    click_on "Edit", match: :first

    fill_in "Personal Note", with: @sermon_section.personal_note
    fill_in "Sermon", with: @sermon_section.sermon_id
    fill_in "Speaker Note", with: @sermon_section.speaker_note
    click_on "Update Sermon section"

    assert_text "Sermon section was successfully updated"
    click_on "Back"
  end

  test "destroying a Sermon section" do
    visit sermon_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sermon section was successfully destroyed"
  end
end
