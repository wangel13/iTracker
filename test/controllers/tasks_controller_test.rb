require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { assigned_to_id: @task.assigned_to_id, body: @task.body, epic_id: @task.epic_id, estimate: @task.estimate, header: @task.header, is_trash: @task.is_trash, priority_id: @task.priority_id, remaining_estimate: @task.remaining_estimate, status_id: @task.status_id } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { assigned_to_id: @task.assigned_to_id, body: @task.body, epic_id: @task.epic_id, estimate: @task.estimate, header: @task.header, is_trash: @task.is_trash, priority_id: @task.priority_id, remaining_estimate: @task.remaining_estimate, status_id: @task.status_id } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
