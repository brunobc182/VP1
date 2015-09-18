require 'test_helper'

class CadastroTimesControllerTest < ActionController::TestCase
  setup do
    @cadastro_time = cadastro_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastro_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro_time" do
    assert_difference('CadastroTime.count') do
      post :create, cadastro_time: { Casa: @cadastro_time.Casa, Cidade: @cadastro_time.Cidade, Descrição: @cadastro_time.Descrição, Estado_id: @cadastro_time.Estado_id, Mascote: @cadastro_time.Mascote, Nome: @cadastro_time.Nome, Rival: @cadastro_time.Rival, Tecnico: @cadastro_time.Tecnico }
    end

    assert_redirected_to cadastro_time_path(assigns(:cadastro_time))
  end

  test "should show cadastro_time" do
    get :show, id: @cadastro_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro_time
    assert_response :success
  end

  test "should update cadastro_time" do
    patch :update, id: @cadastro_time, cadastro_time: { Casa: @cadastro_time.Casa, Cidade: @cadastro_time.Cidade, Descrição: @cadastro_time.Descrição, Estado_id: @cadastro_time.Estado_id, Mascote: @cadastro_time.Mascote, Nome: @cadastro_time.Nome, Rival: @cadastro_time.Rival, Tecnico: @cadastro_time.Tecnico }
    assert_redirected_to cadastro_time_path(assigns(:cadastro_time))
  end

  test "should destroy cadastro_time" do
    assert_difference('CadastroTime.count', -1) do
      delete :destroy, id: @cadastro_time
    end

    assert_redirected_to cadastro_times_path
  end
end
