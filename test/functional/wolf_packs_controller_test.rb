require 'test_helper'

class WolfPacksControllerTest < ActionController::TestCase
  setup do
    @wolf_pack = wolf_packs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wolf_packs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wolf_pack" do
    assert_difference('WolfPack.count') do
      post :create, wolf_pack: { location: @wolf_pack.location, name: @wolf_pack.name }
    end

    assert_redirected_to wolf_pack_path(assigns(:wolf_pack))
  end

  test "should show wolf_pack" do
    get :show, id: @wolf_pack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wolf_pack
    assert_response :success
  end

  test "should update wolf_pack" do
    put :update, id: @wolf_pack, wolf_pack: { location: @wolf_pack.location, name: @wolf_pack.name }
    assert_redirected_to wolf_pack_path(assigns(:wolf_pack))
  end

  test "should destroy wolf_pack" do
    assert_difference('WolfPack.count', -1) do
      delete :destroy, id: @wolf_pack
    end

    assert_redirected_to wolf_packs_path
  end
end
