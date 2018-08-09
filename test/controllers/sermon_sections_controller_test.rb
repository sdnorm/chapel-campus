require 'test_helper'

class SermonSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sermon_section = sermon_sections(:one)
  end

  test "should get index" do
    get sermon_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_sermon_section_url
    assert_response :success
  end

  test "should create sermon_section" do
    assert_difference('SermonSection.count') do
      post sermon_sections_url, params: { sermon_section: { personal_note: @sermon_section.personal_note, sermon_id: @sermon_section.sermon_id, speaker_note: @sermon_section.speaker_note } }
    end

    assert_redirected_to sermon_section_url(SermonSection.last)
  end

  test "should show sermon_section" do
    get sermon_section_url(@sermon_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_sermon_section_url(@sermon_section)
    assert_response :success
  end

  test "should update sermon_section" do
    patch sermon_section_url(@sermon_section), params: { sermon_section: { personal_note: @sermon_section.personal_note, sermon_id: @sermon_section.sermon_id, speaker_note: @sermon_section.speaker_note } }
    assert_redirected_to sermon_section_url(@sermon_section)
  end

  test "should destroy sermon_section" do
    assert_difference('SermonSection.count', -1) do
      delete sermon_section_url(@sermon_section)
    end

    assert_redirected_to sermon_sections_url
  end
end
