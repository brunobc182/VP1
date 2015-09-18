require 'test_helper'

class CdtmsControllerTest < ActionController::TestCase
  setup do
    @cdtm = cdtms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cdtms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cdtm" do
    assert_difference('Cdtm.count') do
      post :create, cdtm: { Casa: @cdtm.Casa, Cidade: @cdtm.Cidade, Descricao: @cdtm.Descricao, Estado_id: @cdtm.Estado_id, Mascote: @cdtm.Mascote, Nome: @cdtm.Nome, Rival: @cdtm.Rival, Tecnico: @cdtm.Tecnico }
    end

    assert_redirected_to cdtm_path(assigns(:cdtm))
  end

  test "should show cdtm" do
    get :show, id: @cdtm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cdtm
    assert_response :success
  end

  test "should update cdtm" do
    patch :update, id: @cdtm, cdtm: { Casa: @cdtm.Casa, Cidade: @cdtm.Cidade, Descricao: @cdtm.Descricao, Estado_id: @cdtm.Estado_id, Mascote: @cdtm.Mascote, Nome: @cdtm.Nome, Rival: @cdtm.Rival, Tecnico: @cdtm.Tecnico }
    assert_redirected_to cdtm_path(assigns(:cdtm))
  end

  test "should destroy cdtm" do
    assert_difference('Cdtm.count', -1) do
      delete :destroy, id: @cdtm
    end

    assert_redirected_to cdtms_path
  end
end
