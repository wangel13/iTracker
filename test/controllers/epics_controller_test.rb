require 'test_helper'

class EpicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epic = epics(:one)
  end

  test "should get index" do
    get epics_url
    assert_response :success
  end

  test "should get new" do
    get new_epic_url
    assert_response :success
  end

  test "should create epic" do
    assert_difference('Epic.count') do
      post epics_url, params: { epic: { description: @epic.description } }
    end

    assert_redirected_to epic_url(Epic.last)
  end

  test "should show epic" do
    get epic_url(@epic)
    assert_response :success
  end

  test "should get edit" do
    get edit_epic_url(@epic)
    assert_response :success
  end

  test "should update epic" do
    patch epic_url(@epic), params: { epic: { description: @epic.description } }
    assert_redirected_to epic_url(@epic)
  end

  test "should destroy epic" do
    assert_difference('Epic.count', -1) do
      delete epic_url(@epic)
    end

    assert_redirected_to epics_url
  end
end
