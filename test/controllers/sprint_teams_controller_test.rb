require 'test_helper'

class SprintTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sprint_team = sprint_teams(:one)
  end

  test "should get index" do
    get sprint_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_sprint_team_url
    assert_response :success
  end

  test "should create sprint_team" do
    assert_difference('SprintTeam.count') do
      post sprint_teams_url, params: { sprint_team: { sprint_id: @sprint_team.sprint_id, team_id: @sprint_team.team_id } }
    end

    assert_redirected_to sprint_team_url(SprintTeam.last)
  end

  test "should show sprint_team" do
    get sprint_team_url(@sprint_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_sprint_team_url(@sprint_team)
    assert_response :success
  end

  test "should update sprint_team" do
    patch sprint_team_url(@sprint_team), params: { sprint_team: { sprint_id: @sprint_team.sprint_id, team_id: @sprint_team.team_id } }
    assert_redirected_to sprint_team_url(@sprint_team)
  end

  test "should destroy sprint_team" do
    assert_difference('SprintTeam.count', -1) do
      delete sprint_team_url(@sprint_team)
    end

    assert_redirected_to sprint_teams_url
  end
end
