require 'test_helper'

class TipoSementesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_semente = tipo_sementes(:one)
  end

  test "should get index" do
    get tipo_sementes_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_semente_url
    assert_response :success
  end

  test "should create tipo_semente" do
    assert_difference('TipoSemente.count') do
      post tipo_sementes_url, params: { tipo_semente: { descricao: @tipo_semente.descricao } }
    end

    assert_redirected_to tipo_semente_url(TipoSemente.last)
  end

  test "should show tipo_semente" do
    get tipo_semente_url(@tipo_semente)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_semente_url(@tipo_semente)
    assert_response :success
  end

  test "should update tipo_semente" do
    patch tipo_semente_url(@tipo_semente), params: { tipo_semente: { descricao: @tipo_semente.descricao } }
    assert_redirected_to tipo_semente_url(@tipo_semente)
  end

  test "should destroy tipo_semente" do
    assert_difference('TipoSemente.count', -1) do
      delete tipo_semente_url(@tipo_semente)
    end

    assert_redirected_to tipo_sementes_url
  end
end
