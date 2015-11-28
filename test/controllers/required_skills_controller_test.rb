require 'test_helper'

class RequiredSkillsControllerTest < ActionController::TestCase
  setup do
    @required_skill = required_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:required_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create required_skill" do
    assert_difference('RequiredSkill.count') do
      post :create, required_skill: { job_id: @required_skill.job_id, skill: @required_skill.skill }
    end

    assert_redirected_to required_skill_path(assigns(:required_skill))
  end

  test "should show required_skill" do
    get :show, id: @required_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @required_skill
    assert_response :success
  end

  test "should update required_skill" do
    patch :update, id: @required_skill, required_skill: { job_id: @required_skill.job_id, skill: @required_skill.skill }
    assert_redirected_to required_skill_path(assigns(:required_skill))
  end

  test "should destroy required_skill" do
    assert_difference('RequiredSkill.count', -1) do
      delete :destroy, id: @required_skill
    end

    assert_redirected_to required_skills_path
  end
end
