require 'test_helper'

class NotaControllerTest < ActionController::TestCase
  setup do
    @nota = nota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota" do
    assert_difference('Nota.count') do
      post :create, :nota => { :aluno_id => @nota.aluno_id, :g1 => @nota.g1, :g2 => @nota.g2, :g3 => @nota.g3, :turma_id => @nota.turma_id }
    end

    assert_redirected_to nota_path(assigns(:nota))
  end

  test "should show nota" do
    get :show, :id => @nota
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nota
    assert_response :success
  end

  test "should update nota" do
    put :update, :id => @nota, :nota => { :aluno_id => @nota.aluno_id, :g1 => @nota.g1, :g2 => @nota.g2, :g3 => @nota.g3, :turma_id => @nota.turma_id }
    assert_redirected_to nota_path(assigns(:nota))
  end

  test "should destroy nota" do
    assert_difference('Nota.count', -1) do
      delete :destroy, :id => @nota
    end

    assert_redirected_to nota_path
  end
end
