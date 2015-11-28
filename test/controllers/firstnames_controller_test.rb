require 'test_helper'

class FirstnamesControllerTest < ActionController::TestCase
  setup do
    @firstname = firstnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firstnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firstname" do
    assert_difference('Firstname.count') do
      post :create, firstname: { Age: @firstname.Age, Email: @firstname.Email, Gender: @firstname.Gender, Lastname: @firstname.Lastname, Origin: @firstname.Origin, Phonenumber: @firstname.Phonenumber, Suburb: @firstname.Suburb }
    end

    assert_redirected_to firstname_path(assigns(:firstname))
  end

  test "should show firstname" do
    get :show, id: @firstname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firstname
    assert_response :success
  end

  test "should update firstname" do
    patch :update, id: @firstname, firstname: { Age: @firstname.Age, Email: @firstname.Email, Gender: @firstname.Gender, Lastname: @firstname.Lastname, Origin: @firstname.Origin, Phonenumber: @firstname.Phonenumber, Suburb: @firstname.Suburb }
    assert_redirected_to firstname_path(assigns(:firstname))
  end

  test "should destroy firstname" do
    assert_difference('Firstname.count', -1) do
      delete :destroy, id: @firstname
    end

    assert_redirected_to firstnames_path
  end
end
