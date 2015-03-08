require 'test_helper'

class CafeteriaCategoriesControllerTest < ActionController::TestCase
  setup do
    @cafeteria_category = cafeteria_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafeteria_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafeteria_category" do
    assert_difference('CafeteriaCategory.count') do
      post :create, cafeteria_category: { name: @cafeteria_category.name }
    end

    assert_redirected_to cafeteria_category_path(assigns(:cafeteria_category))
  end

  test "should show cafeteria_category" do
    get :show, id: @cafeteria_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafeteria_category
    assert_response :success
  end

  test "should update cafeteria_category" do
    patch :update, id: @cafeteria_category, cafeteria_category: { name: @cafeteria_category.name }
    assert_redirected_to cafeteria_category_path(assigns(:cafeteria_category))
  end

  test "should destroy cafeteria_category" do
    assert_difference('CafeteriaCategory.count', -1) do
      delete :destroy, id: @cafeteria_category
    end

    assert_redirected_to cafeteria_categories_path
  end
end
