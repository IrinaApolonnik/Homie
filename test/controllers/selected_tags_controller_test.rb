require "test_helper"

class SelectedTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selected_tag = selected_tags(:one)
  end

  test "should get index" do
    get selected_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_selected_tag_url
    assert_response :success
  end

  test "should create selected_tag" do
    assert_difference("SelectedTag.count") do
      post selected_tags_url, params: { selected_tag: { collection_id: @selected_tag.collection_id, id: @selected_tag.id, tag_id: @selected_tag.tag_id } }
    end

    assert_redirected_to selected_tag_url(SelectedTag.last)
  end

  test "should show selected_tag" do
    get selected_tag_url(@selected_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_selected_tag_url(@selected_tag)
    assert_response :success
  end

  test "should update selected_tag" do
    patch selected_tag_url(@selected_tag), params: { selected_tag: { collection_id: @selected_tag.collection_id, id: @selected_tag.id, tag_id: @selected_tag.tag_id } }
    assert_redirected_to selected_tag_url(@selected_tag)
  end

  test "should destroy selected_tag" do
    assert_difference("SelectedTag.count", -1) do
      delete selected_tag_url(@selected_tag)
    end

    assert_redirected_to selected_tags_url
  end
end
