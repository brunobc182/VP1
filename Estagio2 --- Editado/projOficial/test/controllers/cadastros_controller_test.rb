require 'test_helper'

class CadastrosControllerTest < ActionController::TestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post :create, cadastro: { Casa: @cadastro.Casa, Cidade: @cadastro.Cidade, Descricao: @cadastro.Descricao, Estado: @cadastro.Estado, Mascote: @cadastro.Mascote, Nome: @cadastro.Nome, Rival: @cadastro.Rival, Tecnico: @cadastro.Tecnico }
    end

    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should show cadastro" do
    get :show, id: @cadastro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro
    assert_response :success
  end

  test "should update cadastro" do
    patch :update, id: @cadastro, cadastro: { Casa: @cadastro.Casa, Cidade: @cadastro.Cidade, Descricao: @cadastro.Descricao, Estado: @cadastro.Estado, Mascote: @cadastro.Mascote, Nome: @cadastro.Nome, Rival: @cadastro.Rival, Tecnico: @cadastro.Tecnico }
    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete :destroy, id: @cadastro
    end

    assert_redirected_to cadastros_path
  end
end
