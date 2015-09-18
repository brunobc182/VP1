require 'test_helper'

class MataMataControllerTest < ActionController::TestCase
  setup do
    @mata_matum = mata_mata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mata_mata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mata_matum" do
    assert_difference('MataMatum.count') do
      post :create, mata_matum: { competidores: @mata_matum.competidores, modalidade: @mata_matum.modalidade, nome_camp: @mata_matum.nome_camp }
    end

    assert_redirected_to mata_matum_path(assigns(:mata_matum))
  end

  test "should show mata_matum" do
    get :show, id: @mata_matum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mata_matum
    assert_response :success
  end

  test "should update mata_matum" do
    patch :update, id: @mata_matum, mata_matum: { competidores: @mata_matum.competidores, modalidade: @mata_matum.modalidade, nome_camp: @mata_matum.nome_camp }
    assert_redirected_to mata_matum_path(assigns(:mata_matum))
  end

  test "should destroy mata_matum" do
    assert_difference('MataMatum.count', -1) do
      delete :destroy, id: @mata_matum
    end

    assert_redirected_to mata_mata_path
  end
end
