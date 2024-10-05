require "application_system_test_case"

class SelectedTagsTest < ApplicationSystemTestCase
  setup do
    @selected_tag = selected_tags(:one)
  end

  test "visiting the index" do
    visit selected_tags_url
    assert_selector "h1", text: "Selected tags"
  end

  test "should create selected tag" do
    visit selected_tags_url
    click_on "New selected tag"

    fill_in "Collection", with: @selected_tag.collection_id
    fill_in "Id", with: @selected_tag.id
    fill_in "Tag", with: @selected_tag.tag_id
    click_on "Create Selected tag"

    assert_text "Selected tag was successfully created"
    click_on "Back"
  end

  test "should update Selected tag" do
    visit selected_tag_url(@selected_tag)
    click_on "Edit this selected tag", match: :first

    fill_in "Collection", with: @selected_tag.collection_id
    fill_in "Id", with: @selected_tag.id
    fill_in "Tag", with: @selected_tag.tag_id
    click_on "Update Selected tag"

    assert_text "Selected tag was successfully updated"
    click_on "Back"
  end

  test "should destroy Selected tag" do
    visit selected_tag_url(@selected_tag)
    click_on "Destroy this selected tag", match: :first

    assert_text "Selected tag was successfully destroyed"
  end
end
