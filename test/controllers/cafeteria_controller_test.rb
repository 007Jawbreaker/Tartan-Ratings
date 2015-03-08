require 'test_helper'

class CafeteriaControllerTest < ActionController::TestCase
  setup do
    @cafeterium = cafeteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafeteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafeterium" do
    assert_difference('Cafeterium.count') do
      post :create, cafeterium: { cafeteria_category_id: @cafeterium.cafeteria_category_id, item_description: @cafeterium.item_description, item_name: @cafeterium.item_name, item_price: @cafeterium.item_price }
    end

    assert_redirected_to cafeterium_path(assigns(:cafeterium))
  end

  test "should show cafeterium" do
    get :show, id: @cafeterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafeterium
    assert_response :success
  end

  test "should update cafeterium" do
    patch :update, id: @cafeterium, cafeterium: { cafeteria_category_id: @cafeterium.cafeteria_category_id, item_description: @cafeterium.item_description, item_name: @cafeterium.item_name, item_price: @cafeterium.item_price }
    assert_redirected_to cafeterium_path(assigns(:cafeterium))
  end

  test "should destroy cafeterium" do
    assert_difference('Cafeterium.count', -1) do
      delete :destroy, id: @cafeterium
    end

    assert_redirected_to cafeteria_path
  end
end
