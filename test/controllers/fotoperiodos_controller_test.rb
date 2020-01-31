require 'test_helper'

class FotoperiodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fotoperiodo = fotoperiodos(:one)
  end

  test "should get index" do
    get fotoperiodos_url
    assert_response :success
  end

  test "should get new" do
    get new_fotoperiodo_url
    assert_response :success
  end

  test "should create fotoperiodo" do
    assert_difference('Fotoperiodo.count') do
      post fotoperiodos_url, params: { fotoperiodo: { descricao: @fotoperiodo.descricao, horas: @fotoperiodo.horas } }
    end

    assert_redirected_to fotoperiodo_url(Fotoperiodo.last)
  end

  test "should show fotoperiodo" do
    get fotoperiodo_url(@fotoperiodo)
    assert_response :success
  end

  test "should get edit" do
    get edit_fotoperiodo_url(@fotoperiodo)
    assert_response :success
  end

  test "should update fotoperiodo" do
    patch fotoperiodo_url(@fotoperiodo), params: { fotoperiodo: { descricao: @fotoperiodo.descricao, horas: @fotoperiodo.horas } }
    assert_redirected_to fotoperiodo_url(@fotoperiodo)
  end

  test "should destroy fotoperiodo" do
    assert_difference('Fotoperiodo.count', -1) do
      delete fotoperiodo_url(@fotoperiodo)
    end

    assert_redirected_to fotoperiodos_url
  end
end
